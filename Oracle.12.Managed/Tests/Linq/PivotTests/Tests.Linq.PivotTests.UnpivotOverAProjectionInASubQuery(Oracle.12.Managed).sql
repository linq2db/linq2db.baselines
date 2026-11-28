-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						r.Q1 as "Amount"
					FROM
						"QuarterlySales" r
					WHERE
						r.Q1 IS NOT NULL
					UNION ALL
					SELECT
						x.Q2 as "Amount"
					FROM
						"QuarterlySales" x
					WHERE
						x.Q2 IS NOT NULL
				) r_1
			WHERE
				r_1."Amount" > 15
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Region",
	u_1."Quarter",
	u_1."Amount"
FROM
	"QuarterlySales" t1
		INNER JOIN (
			SELECT
				u."Id",
				CAST('Q1' AS VarChar(255)) as "Quarter",
				u.Q1 as "Amount"
			FROM
				"QuarterlySales" u
			WHERE
				u.Q1 IS NOT NULL
			UNION ALL
			SELECT
				x."Id",
				CAST('Q2' AS VarChar(255)) as "Quarter",
				x.Q2 as "Amount"
			FROM
				"QuarterlySales" x
			WHERE
				x.Q2 IS NOT NULL
		) u_1 ON u_1."Id" = t1."Id"
ORDER BY
	t1."Region",
	u_1."Quarter"

