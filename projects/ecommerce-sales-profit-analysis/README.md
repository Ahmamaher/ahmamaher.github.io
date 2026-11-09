# E-commerce Sales & Profit Analysis

**Portfolio demonstration only — all 500 order records are synthetic.** These results do not represent a real store, client, or marketplace.

## Business question
How can a small online seller monitor sales, product mix, channel performance, and order-level contribution from a transaction export?

## Illustrative dataset
- 500 synthetic orders
- 739 units sold
- Net revenue: **$8,661.11**
- Modeled contribution profit: **$2,926.53**
- Modeled contribution margin: **33.79%**
- Average order value: **$17.32**

## Example segment summaries
| Channel | Orders | Net revenue | Modeled contribution profit |
|---|---:|---:|---:|
| Direct | 130 | $2,238.83 | $780.09 |
| eBay | 123 | $2,179.95 | $739.38 |
| Etsy | 124 | $2,159.52 | $702.24 |
| Shopify | 123 | $2,082.81 | $704.82 |

| Category | Orders | Net revenue | Modeled contribution profit |
|---|---:|---:|---:|
| Home | 114 | $2,573.33 | $872.28 |
| Office | 139 | $2,563.06 | $985.08 |
| Electronics | 112 | $2,162.14 | $774.84 |
| Accessories | 135 | $1,362.57 | $294.32 |

These differences are only arithmetic summaries of randomly generated sample data; they are not actionable market insights.

## Method
- Gross revenue = units × unit price
- Discount = gross revenue × discount rate
- Net revenue = gross revenue − discount
- COGS = units × unit cost
- Modeled direct cost = COGS + shipping expense
- Modeled contribution profit = net revenue − modeled direct cost

## Limitations
The model excludes marketplace/payment fees, advertising, VAT and other taxes, customs, FX, packaging, returns/refunds, labor, storage, and overhead. Therefore **modeled contribution profit is not net profit**. Real business decisions require complete cost data and reconciliation to platform and bank statements.

## Files
- `analysis_queries.sql`: starter schema, contribution view, and channel aggregation.
- `power_bi_measures.dax`: starter measures.
- The downloadable Excel and CSV demonstration kit is available separately.

## Skills demonstrated
Data structuring, KPI definition, SQL aggregation, Excel reporting, Power BI measure design, segment comparison, and explicit data-quality/limitations documentation.
