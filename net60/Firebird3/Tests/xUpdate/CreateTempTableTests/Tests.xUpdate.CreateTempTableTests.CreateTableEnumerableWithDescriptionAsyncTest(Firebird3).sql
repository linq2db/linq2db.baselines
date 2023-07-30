﻿BeforeExecute
-- Firebird3 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird3 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TempTable"
			(
				"Name" VarChar(20) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird (asynchronously)

INSERT INTO "TempTable"
(
	"Name"
)
SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)

SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

BeforeExecute
-- Firebird3 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

