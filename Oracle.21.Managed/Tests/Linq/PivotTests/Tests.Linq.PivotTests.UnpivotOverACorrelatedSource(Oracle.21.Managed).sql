-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."Region",
	u_1."Quarter",
	u_1."Amount"
FROM
	"QuarterlySales" t1
		CROSS APPLY (
			SELECT
				CAST('Q1' AS VarChar(255)) as "Quarter",
				u.Q1 as "Amount"
			FROM
				"QuarterlySales" u
			WHERE
				u."Id" = t1."Id" AND u.Q1 IS NOT NULL
			UNION ALL
			SELECT
				CAST('Q2' AS VarChar(255)) as "Quarter",
				x.Q2 as "Amount"
			FROM
				"QuarterlySales" x
			WHERE
				x."Id" = t1."Id" AND x.Q2 IS NOT NULL
		) u_1
ORDER BY
	t1."Region",
	u_1."Quarter"

