-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(20,'Data 20'), (21,'Data 21'), (22,'Data 22')
	) t1("Id", "Data")

