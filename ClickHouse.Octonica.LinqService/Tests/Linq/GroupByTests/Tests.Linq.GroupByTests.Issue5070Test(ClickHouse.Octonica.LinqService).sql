BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t_1.FinalCustomerId,
	t_1.IsActive,
	sum(t_1.Amount)
FROM
	(
		SELECT
			Coalesce(NULLIF(p.FinalCustomerId, 0), p.CustomerId) as FinalCustomerId,
			false as IsActive,
			t.Volume * p.Price as Amount
		FROM
			Inventory t
				INNER JOIN CustomerPrice p ON t.CustomerId = p.CustomerId
	) t_1
GROUP BY
	t_1.FinalCustomerId,
	t_1.IsActive

