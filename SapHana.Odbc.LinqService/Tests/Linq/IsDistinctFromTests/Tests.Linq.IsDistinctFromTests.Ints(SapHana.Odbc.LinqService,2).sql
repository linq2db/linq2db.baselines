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
DECLARE @Int  -- Int32
SET     @Int = 2
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
DECLARE @Int  -- Int32
SET     @Int = 3
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
DECLARE @value  -- Int32
SET     @value = 2

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
DECLARE @value  -- Int32
SET     @value = 2

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
DECLARE @value  -- Int32
SET     @value = 2

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
DECLARE @value  -- Int32
SET     @value = 2

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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

