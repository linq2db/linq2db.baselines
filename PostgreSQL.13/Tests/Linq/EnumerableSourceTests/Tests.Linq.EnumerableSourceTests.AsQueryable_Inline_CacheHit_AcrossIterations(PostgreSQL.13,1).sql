-- PostgreSQL.13 PostgreSQL13

SELECT
	t1."Id",
	t1."Data"
FROM
	(VALUES
		(10,'Data 10'), (11,'Data 11')
	) t1("Id", "Data")

