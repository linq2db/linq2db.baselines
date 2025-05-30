﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TempTable"
			(
				"Name" VarChar(20) CHARACTER SET UNICODE_FSS NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

INSERT INTO "TempTable"
(
	"Name"
)
SELECT CAST('John' AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

