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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -1
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str1'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -2
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str2'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -3
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str3'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -4
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str4'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -5
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str5'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -6
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str6'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -7
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str7'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -8
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str8'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = -9
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str9'

INSERT INTO "TableWithData"
(
	"Id",
	"Value",
	"ValueStr"
)
VALUES
(
	@Id,
	@Value_1,
	@ValueStr
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"TableWithData"
SET
	"TableWithData"."Id" = 20,
	"TableWithData"."ValueStr" = (
		SELECT
			"t1"."ValueStr"
		FROM
			(
				SELECT FIRST @take
					"i"."Id",
					"i"."ValueStr",
					"i"."Value" as "Value_1"
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
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST @take
					"i_1"."Id",
					"i_1"."ValueStr",
					"i_1"."Value" as "Value_1"
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
RETURNING
	OLD."Id",
	NULL /* Value */,
	OLD."ValueStr",
	NEW."Id",
	NULL /* Value */,
	NEW."ValueStr"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

