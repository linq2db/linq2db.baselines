BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."One"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Zero"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Zero"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Null"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Zero"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	EXISTS(
		SELECT
			"r"."Zero"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."One"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Zero"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Zero"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Null"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Zero"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."One"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"FeatureTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			"r"."Zero"
FROM DUMMY
		INTERSECT
		SELECT
			"r"."Null"
FROM DUMMY
	)

