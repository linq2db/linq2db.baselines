-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(0,'Data 0'), (1,'Data 1')
	) t1("Id", "Data")
ORDER BY
	t1."Id"

