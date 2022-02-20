BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Src"
(
	"Int"            Integer       NOT NULL,
	"NullableInt"    Integer           NULL,
	"String"         NVarChar(255)     NULL,
	"NullableString" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Int_1  -- Int32
SET     @Int_1 = 2
DECLARE @NullableInt  -- Int32
SET     @NullableInt = 2
DECLARE @String NVarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString NVarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Int_1  -- Int32
SET     @Int_1 = 3
DECLARE @NullableInt  -- Int32
SET     @NullableInt = NULL
DECLARE @String NVarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString NVarChar -- String
SET     @NullableString = NULL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value_1  -- Int32
SET     @value_1 = 4
DECLARE @value_2  -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	CASE WHEN "s"."Int" = ? OR "s"."Int" IS NULL AND ? IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value_1  -- Int32
SET     @value_1 = 4
DECLARE @value_2  -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	CASE WHEN "s"."NullableInt" = ? OR "s"."NullableInt" IS NULL AND ? IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value_1  -- Int32
SET     @value_1 = 4
DECLARE @value_2  -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	CASE WHEN "s"."Int" = ? OR "s"."Int" IS NULL AND ? IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value_1  -- Int32
SET     @value_1 = 4
DECLARE @value_2  -- Int32
SET     @value_2 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	CASE WHEN "s"."NullableInt" = ? OR "s"."NullableInt" IS NULL AND ? IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

