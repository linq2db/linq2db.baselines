-- PostgreSQL.18 PostgreSQL

SELECT
	e."Id",
	e."Linked",
	(
		SELECT
			ARRAY_AGG(DISTINCT r."Id")
		FROM
			"Issue155Table" r
		WHERE
			e."Id" = ANY(r."Linked")
	)
FROM
	"Issue155Table" e
WHERE
	e."Id" = 1
LIMIT 2



