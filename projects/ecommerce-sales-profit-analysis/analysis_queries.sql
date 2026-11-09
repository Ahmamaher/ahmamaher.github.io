CREATE TABLE orders (
 order_date DATE NOT NULL, order_id VARCHAR(20) PRIMARY KEY,
 sku VARCHAR(30), product VARCHAR(120), category VARCHAR(60), channel VARCHAR(40),
 units INTEGER NOT NULL, unit_price_usd DECIMAL(12,2),
 discount_rate DECIMAL(5,4), unit_cost_usd DECIMAL(12,2),
 shipping_cost_usd DECIMAL(12,2)
);
CREATE VIEW order_contribution AS
SELECT order_date, order_id, sku, product, category, channel, units,
 units * unit_price_usd AS gross_revenue,
 units * unit_price_usd * discount_rate AS discount_amount,
 units * unit_price_usd * (1-discount_rate) AS net_revenue,
 units * unit_cost_usd AS cogs,
 units * unit_cost_usd + shipping_cost_usd AS modeled_direct_cost,
 units * unit_price_usd * (1-discount_rate) -
 (units * unit_cost_usd + shipping_cost_usd) AS contribution_profit
FROM orders;
SELECT channel, COUNT(DISTINCT order_id) AS orders,
 SUM(net_revenue) AS net_revenue, SUM(contribution_profit) AS contribution_profit
FROM order_contribution GROUP BY channel ORDER BY net_revenue DESC;
