-- ClickHouse.Driver ClickHouse

WITH CTE_1 AS
(
	SELECT
		g_1.InvestorId as InvestorId,
		g_1.SecurityClass as SecurityClass,
		SUM(g_1.Units) as Units
	FROM
		Transaction g_1
	GROUP BY
		g_1.SecurityClass,
		g_1.InvestorId
)
SELECT
	p.InvestorId,
	p.Units,
	SUM(p.NetPayment)
FROM
	(
		SELECT
			ip.InvestorId as InvestorId,
			b.Units as Units,
			ip.NetPayment as NetPayment
		FROM
			PaymentEvent g_2
				INNER JOIN InvestorPayment ip ON g_2.Id = ip.Id
				INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
				INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND g_2.Id = pc.EventId
				INNER JOIN CTE_1 b ON ip.InvestorId = b.InvestorId AND g_2.SecurityClass = b.SecurityClass
	) p
GROUP BY
	p.InvestorId,
	p.Units

