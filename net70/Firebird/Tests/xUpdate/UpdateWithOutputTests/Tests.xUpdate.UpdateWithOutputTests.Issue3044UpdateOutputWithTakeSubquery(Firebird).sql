BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird

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
-- Firebird

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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"TableWithData"
SET
	"TableWithData"."Id" = 20,
	"TableWithData"."Value" = (
		SELECT
			"t1"."Value_1"
		FROM
			(
				SELECT FIRST @take
					"i"."Id",
					"i"."Value" as "Value_1",
					"i"."ValueStr"
				FROM
					"TableWithData" "i"
				WHERE
					"i"."Id" >= 7
				ORDER BY
					"i"."Id"
			) "t1"
		WHERE
			"TableWithData"."Id" = "t1"."Id" AND "TableWithData"."Value" = "t1"."Value_1" AND
			("TableWithData"."ValueStr" = "t1"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t1"."ValueStr" IS NULL)
	),
	"TableWithData"."ValueStr" = (
		SELECT
			"t2"."ValueStr"
		FROM
			(
				SELECT FIRST @take
					"i_1"."Id",
					"i_1"."Value" as "Value_1",
					"i_1"."ValueStr"
				FROM
					"TableWithData" "i_1"
				WHERE
					"i_1"."Id" >= 7
				ORDER BY
					"i_1"."Id"
			) "t2"
		WHERE
			"TableWithData"."Id" = "t2"."Id" AND "TableWithData"."Value" = "t2"."Value_1" AND
			("TableWithData"."ValueStr" = "t2"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t2"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST @take
					"i_2"."Id",
					"i_2"."Value" as "Value_1",
					"i_2"."ValueStr"
				FROM
					"TableWithData" "i_2"
				WHERE
					"i_2"."Id" >= 7
				ORDER BY
					"i_2"."Id"
			) "t3"
		WHERE
			"TableWithData"."Id" = "t3"."Id" AND "TableWithData"."Value" = "t3"."Value_1" AND
			("TableWithData"."ValueStr" = "t3"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t3"."ValueStr" IS NULL)
	)
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr",
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

