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

SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

INSERT INTO "test_insert_or_replace"
(
	"id",
	"name"
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_insert_or_replace"

