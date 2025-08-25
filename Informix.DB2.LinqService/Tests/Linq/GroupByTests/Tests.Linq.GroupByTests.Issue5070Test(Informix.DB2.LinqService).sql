BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t_1.FinalCustomerId,
	t_1.IsActive,
	SUM(t_1.Amount)
FROM
	(
		SELECT
			Nvl(NULLIF(p.FinalCustomerId, 0), p.CustomerId) as FinalCustomerId,
			'f'::BOOLEAN as IsActive,
			t.Volume * p.Price as Amount
		FROM
			Inventory t
				INNER JOIN CustomerPrice p ON t.CustomerId = p.CustomerId
	) t_1
GROUP BY
	t_1.FinalCustomerId,
	t_1.IsActive

