-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Region",
	u_1."Quarter",
	u_1."Amount"
FROM
	"QuarterlySales" t1
		INNER JOIN LATERAL (
			SELECT
				'Q1'::text as "Quarter",
				u."Q1" as "Amount"
			FROM
				"QuarterlySales" u
			WHERE
				u."Id" = t1."Id" AND u."Q1" IS NOT NULL
			UNION ALL
			SELECT
				'Q2'::text as "Quarter",
				x."Q2" as "Amount"
			FROM
				"QuarterlySales" x
			WHERE
				x."Id" = t1."Id" AND x."Q2" IS NOT NULL
		) u_1 ON 1=1
ORDER BY
	t1."Region",
	u_1."Quarter"

