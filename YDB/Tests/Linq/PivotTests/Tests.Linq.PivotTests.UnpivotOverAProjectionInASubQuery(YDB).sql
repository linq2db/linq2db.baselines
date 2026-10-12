-- YDB Ydb
SELECT
	EXISTS(
		SELECT
			1
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
			r_1.Amount > Decimal('15', 22, 9)
	) as c1

-- YDB Ydb
SELECT
	t1.Region as Region,
	u_1.Quarter as Quarter,
	u_1.Amount as Amount
FROM
	QuarterlySales t1
		INNER JOIN (
			SELECT
				u.Id as Id,
				Unwrap(CAST('Q1'u AS Text)) as Quarter,
				u.Q1 as Amount
			FROM
				QuarterlySales u
			WHERE
				u.Q1 IS NOT NULL
			UNION ALL
			SELECT
				x.Id as Id,
				Unwrap(CAST('Q2'u AS Text)) as Quarter,
				x.Q2 as Amount
			FROM
				QuarterlySales x
			WHERE
				x.Q2 IS NOT NULL
		) u_1 ON u_1.Id = t1.Id
ORDER BY
	t1.Region,
	u_1.Quarter

