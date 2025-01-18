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

