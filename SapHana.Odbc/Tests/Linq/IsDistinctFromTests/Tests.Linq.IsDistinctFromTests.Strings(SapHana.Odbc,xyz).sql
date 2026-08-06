-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."String"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."NullableString"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."String"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @value NVarChar(3) -- String
SET     @value = 'xyz'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."NullableString"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

