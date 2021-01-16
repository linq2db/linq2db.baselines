BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table1')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "temp_table1"
			(
				ID      Int NOT NULL,
				"Value" Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 1,2 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table2')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "temp_table2"
			(
				ID      Int NOT NULL,
				"Value" Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird

INSERT INTO "temp_table2"
(
	ID,
	"Value"
)
SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- Firebird

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 2,3 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
-- Firebird

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 4,5 FROM rdb$database

BeforeExecute
-- Firebird

DELETE FROM "temp_table1"

BeforeExecute
-- Firebird

DELETE FROM "temp_table2"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table2"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table1"';
END

