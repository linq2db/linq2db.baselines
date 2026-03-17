-- PostgreSQL.18 PostgreSQL

SELECT
	(g_2."Message"::text || ' items have not been processed, e.g. #' || Coalesce(g_2."Message_1"::text, '')) || '.'
FROM
	(
		SELECT
			COUNT(*) as "Message",
			MIN(g_1."PersonID") as "Message_1"
		FROM
			"Person" g_1
		WHERE
			g_1."LastName" <> 'ERROR'
	) g_2
WHERE
	g_2."Message" > 0

