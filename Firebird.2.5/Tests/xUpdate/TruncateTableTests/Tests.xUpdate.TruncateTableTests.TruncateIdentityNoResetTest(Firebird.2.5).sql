-- Firebird.2.5 Firebird

DELETE FROM "test_temp"

-- Firebird.2.5 Firebird

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.2.5 Firebird

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID

-- Firebird.2.5 Firebird

DELETE FROM "test_temp"

-- Firebird.2.5 Firebird

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.2.5 Firebird

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID

