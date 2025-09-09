BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value BinaryDouble -- Double
SET     @value = 0D

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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @value BinaryDouble -- Double
SET     @value = 3147483648D

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

