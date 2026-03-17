-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			NULL::BigInt as "Value_1"
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
			2147483648::BigInt as "Value_1"
		FROM
			"Person" r
	) t1

