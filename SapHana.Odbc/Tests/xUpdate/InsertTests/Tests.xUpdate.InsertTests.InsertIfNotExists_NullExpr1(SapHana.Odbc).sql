BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_insert_or_replace"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "test_insert_or_replace"
(
	"id"         Integer       NOT NULL,
	"name"       NVarChar(255)     NULL,
	"created_by" NVarChar(255)     NULL,
	"updated_by" NVarChar(255)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'test'

INSERT INTO "test_insert_or_replace"
(
	"id",
	"name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_insert_or_replace"

