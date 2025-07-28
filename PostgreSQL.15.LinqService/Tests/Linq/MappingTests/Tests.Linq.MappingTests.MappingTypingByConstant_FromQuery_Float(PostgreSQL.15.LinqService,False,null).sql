BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Real -- Single
SET     @value = NULL

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			:value as "Value_1"
		FROM
			"Person" r
	) t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 3.14748365E+09::float4

SELECT
	t1."ID",
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as "ID",
			:value as "Value_1"
		FROM
			"Person" r
	) t1

