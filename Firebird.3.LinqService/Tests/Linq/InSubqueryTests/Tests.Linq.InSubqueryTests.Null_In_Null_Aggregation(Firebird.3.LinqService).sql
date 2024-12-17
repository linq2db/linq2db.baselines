BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_1"
			(
				ID Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 3

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_2"
			(
				ID Int,
				GV Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @GV Integer -- Int32
SET     @GV = 1

INSERT INTO "test_in_2"
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @GV Integer -- Int32
SET     @GV = 0

INSERT INTO "test_in_2"
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = NULL
DECLARE @GV Integer -- Int32
SET     @GV = NULL

INSERT INTO "test_in_2"
(
	ID,
	GV
)
VALUES
(
	@ID,
	@GV
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT
					MIN("g_1".ID) as "In_1"
				FROM
					"test_in_2" "g_1"
				GROUP BY
					"g_1".GV
			) "t1"
		WHERE
			"t".ID = "t1"."In_1" OR "t".ID IS NULL AND "t1"."In_1" IS NULL
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1".GV
FROM
	"test_in_2" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

