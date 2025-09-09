BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @value Numeric -- Decimal
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
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @value Numeric(13, 3) -- Decimal
SET     @value = 2147483648.123

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

