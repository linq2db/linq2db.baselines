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

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" IN ('THREE') OR "s"."Enum" IS NULL)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('TWO') AND "s"."Enum" IS NOT NULL)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('THREE', 'TWO') OR "s"."Enum" IS NULL)
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

