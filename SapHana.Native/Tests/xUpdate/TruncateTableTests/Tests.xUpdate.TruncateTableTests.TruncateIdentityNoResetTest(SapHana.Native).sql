-- SapHana.Native SapHana
DELETE FROM "test_temp"

-- SapHana.Native SapHana
INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Native SapHana
INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1"."ID",
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1"."ID"
LIMIT 2 OFFSET :"skip"

-- SapHana.Native SapHana
DELETE FROM "test_temp"

-- SapHana.Native SapHana
INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Native SapHana
INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- SapHana.Native SapHana
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1"."ID",
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1"."ID"
LIMIT 2 OFFSET :"skip"

