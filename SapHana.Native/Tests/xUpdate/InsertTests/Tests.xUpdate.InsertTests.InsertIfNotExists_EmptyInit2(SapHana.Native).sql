-- SapHana.Native SapHana
SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = 1

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	1
FROM
	"test_insert_or_replace" "t1"
WHERE
	"t1"."id" = 1

