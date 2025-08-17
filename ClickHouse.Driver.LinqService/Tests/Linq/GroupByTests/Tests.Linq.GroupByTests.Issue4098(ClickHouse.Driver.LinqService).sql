BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	ip.InvestorId,
	t1.Units,
	sum(ip.NetPayment)
FROM
	PaymentEvent p
		INNER JOIN InvestorPayment ip ON p.Id = ip.Id
		INNER JOIN InvestorPaymentDetail ipd ON ip.InvestorId = ipd.InvestorId
		INNER JOIN PaymentCalculation pc ON ipd.CalculationId = pc.Id AND p.Id = pc.EventId
		INNER JOIN (
			SELECT
				sum(b.Units) as Units,
				b.InvestorId as InvestorId,
				b.SecurityClass as SecurityClass
			FROM
				Transaction b
			GROUP BY
				b.SecurityClass,
				b.InvestorId
		) t1 ON ip.InvestorId = t1.InvestorId AND p.SecurityClass = t1.SecurityClass
GROUP BY
	ip.InvestorId,
	t1.Units

