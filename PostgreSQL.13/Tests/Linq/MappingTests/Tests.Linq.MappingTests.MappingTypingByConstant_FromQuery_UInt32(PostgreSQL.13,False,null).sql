-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Bigint -- Int64
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @value Bigint -- Int64
SET     @value = 2147483648

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

