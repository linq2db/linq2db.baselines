-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			NULL::Real as "Value_1"
		FROM
			"Person" r
	) t1

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			3.14748365E+09::Real as "Value_1"
		FROM
			"Person" r
	) t1

