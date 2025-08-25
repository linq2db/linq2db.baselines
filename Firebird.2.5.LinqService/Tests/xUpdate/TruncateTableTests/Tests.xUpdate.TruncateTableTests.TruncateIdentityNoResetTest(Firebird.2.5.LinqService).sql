BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM "test_temp"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM "test_temp"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID

