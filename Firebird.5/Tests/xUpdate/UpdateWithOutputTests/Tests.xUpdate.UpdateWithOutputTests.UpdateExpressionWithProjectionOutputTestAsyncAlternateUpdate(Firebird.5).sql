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
SELECT 9,-9,'Str9' FROM rdb$database

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

INSERT INTO "DestinationTable"
(
	"Id",
	"Value",
	"ValueStr"
)
SELECT 1,0,CAST('0Dst' AS VarChar(50) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,-1,'-1Dst' FROM rdb$database UNION ALL
SELECT 3,-2,'-2Dst' FROM rdb$database UNION ALL
SELECT 4,-3,'-3Dst' FROM rdb$database UNION ALL
SELECT 5,-4,'-4Dst' FROM rdb$database UNION ALL
SELECT 6,-5,'-5Dst' FROM rdb$database UNION ALL
SELECT 7,-6,'-6Dst' FROM rdb$database UNION ALL
SELECT 8,-7,'-7Dst' FROM rdb$database UNION ALL
SELECT 9,-8,'-8Dst' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

UPDATE
	"DestinationTable"
SET
	"Id" = (
		SELECT
			"s_1"."Id"
		FROM
			"TableWithData" "s_1"
				INNER JOIN "DestinationTable" "t_1" ON "t_1"."Id" = "s_1"."Id"
		WHERE
			"DestinationTable"."Id" = "t_1"."Id" AND "DestinationTable"."Value" = "t_1"."Value" AND
			("DestinationTable"."ValueStr" = "t_1"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_1"."ValueStr" IS NULL)
	),
	"Value" = (
		SELECT
			"s_2"."Value"
		FROM
			"TableWithData" "s_2"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "s_2"."Id"
		WHERE
			"DestinationTable"."Id" = "t_2"."Id" AND "DestinationTable"."Value" = "t_2"."Value" AND
			("DestinationTable"."ValueStr" = "t_2"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_2"."ValueStr" IS NULL)
	),
	"ValueStr" = (
		SELECT
			"s_3"."ValueStr"
		FROM
			"TableWithData" "s_3"
				INNER JOIN "DestinationTable" "t_3" ON "t_3"."Id" = "s_3"."Id"
		WHERE
			"DestinationTable"."Id" = "t_3"."Id" AND "DestinationTable"."Value" = "t_3"."Value" AND
			("DestinationTable"."ValueStr" = "t_3"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_3"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"TableWithData" "s"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "s"."Id"
		WHERE
			"DestinationTable"."Id" = "t"."Id" AND "DestinationTable"."Value" = "t"."Value" AND
			("DestinationTable"."ValueStr" = "t"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t"."ValueStr" IS NULL)
	)
RETURNING
	OLD."Value",
	NEW."Value"

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

