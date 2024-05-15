BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

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
SELECT 9,-9,'Str9' FROM rdb$database UNION ALL
SELECT 10,-10,'Str10' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DestinationTable"
			(
				"Id"       Int                                   NOT NULL,
				"Value"    Int                                   NOT NULL,
				"ValueStr" VarChar(50) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @param Integer -- Int32
SET     @param = 200

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT
	"s"."Id" + 100 + CAST(@param AS Int),
	"s"."Value" + 100,
	"s"."ValueStr" || CAST(100 AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"TableWithData" "s"
WHERE
	"s"."Id" > 3
RETURNING
	"DestinationTable"."Id" + 1,
	"DestinationTable"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."ValueStr"
FROM
	"DestinationTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id" + 1,
	"t"."ValueStr" || CAST(1 AS VarChar(11) CHARACTER SET UNICODE_FSS)
FROM
	"DestinationTable" "t"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

