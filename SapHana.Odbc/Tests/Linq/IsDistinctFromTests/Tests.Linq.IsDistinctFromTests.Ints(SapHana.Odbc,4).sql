BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."Int"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."NullableInt"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."Int"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 4

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."NullableInt"
FROM DUMMY
		INTERSECT
		SELECT
			?
FROM DUMMY
	)

