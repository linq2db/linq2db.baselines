-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			NULL::Float as "Value_1"
		FROM
			"Person" r
	) t1

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			3147483648::Float as "Value_1"
		FROM
			"Person" r
	) t1

