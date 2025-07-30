BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Real -- Single
SET     @value = NULL

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Real as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Real(4) -- Single
SET     @value = 3.14748365E+09

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			@value::Real as Value_1
		FROM
			Person r
	) t1

