﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
-- Firebird.3 Firebird3 (asynchronously)

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 1,2 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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
-- Firebird.3 Firebird3 (asynchronously)

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
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"temp_table2" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 2,3 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
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
	CAST(@ID AS Int),
	CAST(@Value AS Int)
)

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

INSERT INTO "temp_table1"
(
	ID,
	"Value"
)
SELECT 4,5 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM "temp_table1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM "temp_table2"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table2"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'temp_table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "temp_table1"';
END

