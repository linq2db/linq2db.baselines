﻿BeforeExecute
--  ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		g_1.InvestorId,
		g_1.SecurityClass,
		sum(g_1.Units) as Units
	FROM
		Transaction g_1
	GROUP BY
		g_1.SecurityClass,
		g_1.InvestorId
)
SELECT
	ip.InvestorId,
	b.Units,
	sum(ip.NetPayment)
FROM
	PaymentEvent p
		INNER JOIN InvestorPayment ip ON p.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND p.Id = pc.EventId
		INNER JOIN CTE_1 b ON ip.InvestorId = b.InvestorId AND p.SecurityClass = b.SecurityClass
GROUP BY
	ip.InvestorId,
	b.Units

