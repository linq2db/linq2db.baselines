BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			2147483648::bigint as "Value_1"
		FROM
			"Person" r
	) t1

