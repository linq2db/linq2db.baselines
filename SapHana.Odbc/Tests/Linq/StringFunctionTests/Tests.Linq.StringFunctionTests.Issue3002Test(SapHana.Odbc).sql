BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"     Integer       NOT NULL,
	"Value"  NVarChar(50)      NULL,
	"Value2" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "SampleClass"
(
	"Id",
	"Value",
	"Value2"
)
VALUES
(
	1,
	'Test',
	'SampleClass'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "SampleClass"
(
	"Id",
	"Value",
	"Value2"
)
VALUES
(
	2,
	'Value',
	'SomeTest'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test NVarChar(6) -- String
SET     @test = '%Test%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Test
DECLARE @test NVarChar(6) -- String
SET     @test = '%Test%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test NVarChar(7) -- String
SET     @test = '%Value%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Value
DECLARE @test NVarChar(7) -- String
SET     @test = '%Value%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test NVarChar(7) -- String
SET     @test = '%Class%'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"SampleClass" "sampleClass_1"
			WHERE
				"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @test NVarChar -- String
SET     @test = Class
DECLARE @test NVarChar(7) -- String
SET     @test = '%Class%'

SELECT
	COUNT(*)
FROM
	"SampleClass" "sampleClass_1"
WHERE
	"sampleClass_1"."Value" = ? OR "sampleClass_1"."Value2" LIKE ? ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

