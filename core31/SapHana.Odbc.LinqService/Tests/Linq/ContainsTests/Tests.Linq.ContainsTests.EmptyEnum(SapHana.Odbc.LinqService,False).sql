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

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	1 = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Src"

