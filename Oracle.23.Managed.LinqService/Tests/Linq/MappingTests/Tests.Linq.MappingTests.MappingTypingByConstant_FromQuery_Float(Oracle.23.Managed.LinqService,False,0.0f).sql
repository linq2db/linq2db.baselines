BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value BinaryFloat -- Single
SET     @value = 0

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
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value BinaryFloat -- Single
SET     @value = 3.14748365E+09

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

