﻿BeforeExecute
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

SELECT
	NULLIF("s"."Int", 2)
FROM
	"Src" "s"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."Int", 4)
FROM
	"Src" "s"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."NullableInt", 2)
FROM
	"Src" "s"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	NULLIF("s"."NullableInt", 4)
FROM
	"Src" "s"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

