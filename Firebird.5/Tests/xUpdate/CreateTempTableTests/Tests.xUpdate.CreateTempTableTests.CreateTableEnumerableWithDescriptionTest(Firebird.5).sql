﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "TempTable"
(
	"Name"
)
SELECT CAST('John' AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

