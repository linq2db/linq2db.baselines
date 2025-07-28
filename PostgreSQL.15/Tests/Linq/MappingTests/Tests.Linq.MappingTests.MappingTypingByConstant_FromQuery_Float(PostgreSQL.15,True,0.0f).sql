BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			0::float4 as "Value_1"
		FROM
			"Person" r
	) t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			3.14748365E+09::float4 as "Value_1"
		FROM
			"Person" r
	) t1

