-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 1,2 FROM rdb$database

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"temp_table1" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"temp_table2" "t1"

-- Firebird.4 Firebird4

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 2,3 FROM rdb$database

-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

-- Firebird.4 Firebird4

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 4,5 FROM rdb$database

-- Firebird.4 Firebird4

DELETE FROM "temp_table1"

-- Firebird.4 Firebird4

DELETE FROM "temp_table2"

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table2"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table1"';
END

