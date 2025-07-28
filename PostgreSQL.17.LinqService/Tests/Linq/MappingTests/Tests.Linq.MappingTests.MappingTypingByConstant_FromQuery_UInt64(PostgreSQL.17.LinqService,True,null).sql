BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			NULL::decimal(20) as "Value_1"
		FROM
			"Person" r
	) t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			Floor(2147483648)::decimal(20) as "Value_1"
		FROM
			"Person" r
	) t1

