BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Decimal
SET     @value = NULL

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Decimal as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Decimal(16)
SET     @value = 2147483648.123

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Decimal(13, 3) as Value_1
		FROM
			Person r
	) t1

