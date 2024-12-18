BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FeatureTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FeatureTable"
(
	"Id"       Integer NOT NULL,
	"One"      Integer     NULL,
	"Zero"     Integer     NULL,
	"Null"     Integer     NULL,
	"True"     TinyInt     NULL,
	"False"    TinyInt     NULL,
	"BoolNull" TinyInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @One  -- Int32
SET     @One = 1
DECLARE @Zero  -- Int32
SET     @Zero = 0
DECLARE @Null  -- Int32
SET     @Null = NULL
DECLARE @True  -- Byte
SET     @True = 1
DECLARE @False  -- Byte
SET     @False = 0
DECLARE @BoolNull  -- Byte
SET     @BoolNull = NULL

INSERT INTO "FeatureTable"
(
	"Id",
	"One",
	"Zero",
	"Null",
	"True",
	"False",
	"BoolNull"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FeatureTable"

