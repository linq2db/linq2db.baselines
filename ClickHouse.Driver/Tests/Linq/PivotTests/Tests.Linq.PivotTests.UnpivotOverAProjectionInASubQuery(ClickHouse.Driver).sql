-- ClickHouse.Driver ClickHouse
SELECT
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					r.Q1 as Amount
				FROM
					QuarterlySales r
				WHERE
					r.Q1 IS NOT NULL
				UNION ALL
				SELECT
					x.Q2 as Amount
				FROM
					QuarterlySales x
				WHERE
					x.Q2 IS NOT NULL
			) r_1
		WHERE
			r_1.Amount > toDecimal128('15', 10)
	)

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Region,
	u_1.Quarter,
	u_1.Amount
FROM
	QuarterlySales t1
		INNER JOIN (
			SELECT
				u.Id as Id,
				toString('Q1') as Quarter,
				u.Q1 as Amount
			FROM
				QuarterlySales u
			WHERE
				u.Q1 IS NOT NULL
			UNION ALL
			SELECT
				x.Id as Id,
				toString('Q2') as Quarter,
				x.Q2 as Amount
			FROM
				QuarterlySales x
			WHERE
				x.Q2 IS NOT NULL
		) u_1 ON u_1.Id = t1.Id
ORDER BY
	t1.Region,
	u_1.Quarter

