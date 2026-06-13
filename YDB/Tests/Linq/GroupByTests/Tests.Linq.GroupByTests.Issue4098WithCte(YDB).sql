-- YDB Ydb

$CTE_1 = 	SELECT
		g_1.InvestorId as InvestorId,
		g_1.SecurityClass as SecurityClass,
		SUM(g_1.Units) as Units
	FROM
		`Transaction` g_1
	GROUP BY
		g_1.SecurityClass,
		g_1.InvestorId
;

SELECT
	ip.InvestorId as InvestorId,
	b.Units as TotalUnits,
	SUM(ip.NetPayment) as TotalAmount
FROM
	PaymentEvent p
		INNER JOIN InvestorPayment ip ON p.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND p.Id = pc.EventId
		INNER JOIN $CTE_1 b ON ip.InvestorId = b.InvestorId AND p.SecurityClass = b.SecurityClass
GROUP BY
	ip.InvestorId,
	b.Units

