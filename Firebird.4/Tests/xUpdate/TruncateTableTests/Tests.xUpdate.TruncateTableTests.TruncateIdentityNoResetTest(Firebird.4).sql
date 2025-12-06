-- Firebird.4 Firebird4

DELETE FROM "test_temp"

-- Firebird.4 Firebird4

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.4 Firebird4

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

-- Firebird.4 Firebird4

DELETE FROM "test_temp"

-- Firebird.4 Firebird4

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.4 Firebird4

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

-- Firebird.4 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

