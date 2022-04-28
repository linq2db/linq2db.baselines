﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Src"
(
	"Id"    Integer     NOT NULL,
	"Int"   Integer         NULL,
	"Enum"  NVarChar(5)     NULL,
	"CEnum" VarChar(20)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int_1  -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Int_1  -- Int32
SET     @Int_1 = 2
DECLARE @Enum NVarChar(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
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
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar -- AnsiString
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar -- AnsiString
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

