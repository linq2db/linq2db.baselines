BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT EXISTS(
		SELECT
			s.String
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::NVarChar(3)
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT EXISTS(
		SELECT
			s.NullableString
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::NVarChar(3)
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	EXISTS(
		SELECT
			s.String
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::NVarChar(3)
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	EXISTS(
		SELECT
			s.NullableString
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::NVarChar(3)
		FROM table(set{1})
	)

