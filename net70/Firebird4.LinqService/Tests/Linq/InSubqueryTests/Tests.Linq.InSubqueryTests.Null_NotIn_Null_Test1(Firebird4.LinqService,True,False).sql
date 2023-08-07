BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
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
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 4

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = NULL

INSERT INTO "test_in_1"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_2"
			(
				ID Int
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 4

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 6

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = NULL

INSERT INTO "test_in_2"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

