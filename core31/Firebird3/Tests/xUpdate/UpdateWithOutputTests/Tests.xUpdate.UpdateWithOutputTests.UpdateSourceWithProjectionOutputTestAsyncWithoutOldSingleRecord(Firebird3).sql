﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableWithData"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT 1,-1,CAST('Str1' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,-2,'Str2' FROM rdb$database UNION ALL
SELECT 3,-3,'Str3' FROM rdb$database UNION ALL
SELECT 4,-4,'Str4' FROM rdb$database UNION ALL
SELECT 5,-5,'Str5' FROM rdb$database UNION ALL
SELECT 6,-6,'Str6' FROM rdb$database UNION ALL
SELECT 7,-7,'Str7' FROM rdb$database UNION ALL
SELECT 8,-8,'Str8' FROM rdb$database UNION ALL
SELECT 9,-9,'Str9' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird (asynchronously)

UPDATE
	"TableWithData"
SET
	"TableWithData"."Id" = "TableWithData"."Id",
	"TableWithData"."Value" = "TableWithData"."Value" + 1,
	"TableWithData"."ValueStr" = "TableWithData"."ValueStr" || 'Upd'
WHERE
	"TableWithData"."Id" = 3
RETURNING
	NEW."Value"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

