BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Integer(4) -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT EXISTS(
		SELECT
			s."Int"
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::Int
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Integer(4) -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	NOT EXISTS(
		SELECT
			s.NullableInt
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::Int
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Integer(4) -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	EXISTS(
		SELECT
			s."Int"
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::Int
		FROM table(set{1})
	)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @value Integer(4) -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	EXISTS(
		SELECT
			s.NullableInt
		FROM table(set{1})
		INTERSECT
		SELECT
			@value::Int
		FROM table(set{1})
	)

