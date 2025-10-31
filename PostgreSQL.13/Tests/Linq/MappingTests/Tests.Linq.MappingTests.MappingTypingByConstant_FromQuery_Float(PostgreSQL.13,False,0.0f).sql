-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 0

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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Real -- Single
SET     @value = 3.14748365E+09

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

