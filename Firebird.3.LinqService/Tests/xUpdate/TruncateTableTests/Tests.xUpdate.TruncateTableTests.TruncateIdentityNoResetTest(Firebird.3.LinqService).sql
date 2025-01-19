BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM "test_temp"

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3
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

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM "test_temp"

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3
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

