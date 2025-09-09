BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Double
SET     @value = NULL

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Float as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Double(8)
SET     @value = 3147483648

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Float as Value_1
		FROM
			Person r
	) t1

