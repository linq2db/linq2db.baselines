BeforeExecute
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
DECLARE @Int  -- Int32
SET     @Int = NULL
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
DECLARE @Int  -- Int32
SET     @Int = 2
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
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value4___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @CEnum VarChar -- AnsiString
SET     @CEnum = NULL
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value3___'
DECLARE @CEnum VarChar(12) -- AnsiString
SET     @CEnum = '___Value2___'

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (?, ?)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

