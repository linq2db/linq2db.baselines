-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
-- Command 1
SELECT
	g_1."Id",
	t1."Item_1",
	t1."Id",
	t1."Value_1",
	t1."GroupId",
	t1."Name"
FROM
	"BatchGroup" g_1
		LEFT JOIN LATERAL (
			SELECT
				i."Id",
				i."Value" as "Value_1",
				i."GroupId",
				i."Name",
				1 as "Item_1"
			FROM
				"BatchItem" i
			WHERE
				i."GroupId" = g_1."Id" AND i."Id" > 8
			LIMIT 1
		) t1 ON 1=1
ORDER BY
	g_1."Id"

-- Command 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" t1
	)
