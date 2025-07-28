BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Decimal
SET     @value = NULL

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			:value as "Value_1"
		FROM
			"Person" r
	) t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Decimal(13, 3)
SET     @value = 2147483648.123

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			:value as "Value_1"
		FROM
			"Person" r
	) t1

