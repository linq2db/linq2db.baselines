-- YDB Ydb

SELECT
	t_1.FinalCustomerId as FinalCustomerId,
	t_1.IsActive as IsActive,
	SUM(t_1.c1) as Amount
FROM
	(
		SELECT
			Coalesce(CASE
				WHEN p.FinalCustomerId = 0 THEN NULL
				ELSE p.FinalCustomerId
			END, p.CustomerId) as FinalCustomerId,
			false as IsActive,
			t.Volume * p.Price as c1
		FROM
			Inventory t
				INNER JOIN CustomerPrice p ON t.CustomerId = p.CustomerId
	) t_1
GROUP BY
	t_1.FinalCustomerId,
	t_1.IsActive

