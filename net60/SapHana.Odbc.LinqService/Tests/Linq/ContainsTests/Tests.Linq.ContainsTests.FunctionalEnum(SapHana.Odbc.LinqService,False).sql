BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Src"
(
	"Id"   Integer     NOT NULL,
	"Int"  Integer         NULL,
	"Enum" NVarChar(5)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Int_1  -- Int32
SET     @Int_1 = NULL
DECLARE @Enum NVarChar -- String
SET     @Enum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum"
)
VALUES
(
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

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', NULL)
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN (NULL, 'TWO')
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN ('THREE', 'TWO')
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

