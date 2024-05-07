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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = -1
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -2
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -3
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -4
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -5
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -6
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -7
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -8
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -9
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
	@Value,
	@ValueStr
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"TableWithData"
SET
	"Id" = 20,
	"Value" = (
		SELECT
			"t2"."Value_1"
		FROM
			(
				SELECT
					"i_1"."Value" as "Value_1",
					"i_1"."ValueStr",
					"i_1"."Id"
				FROM
					"TableWithData" "i_1"
				WHERE
					"i_1"."Id" >= 7
				ORDER BY
					"i_1"."Id"
				FETCH NEXT @take ROWS ONLY
			) "t2"
		WHERE
			"TableWithData"."Id" = "t2"."Id" AND "TableWithData"."Value" = "t2"."Value_1" AND
			("TableWithData"."ValueStr" = "t2"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t2"."ValueStr" IS NULL)
	),
	"ValueStr" = (
		SELECT
			"t3"."ValueStr"
		FROM
			(
				SELECT
					"i_2"."Value" as "Value_1",
					"i_2"."ValueStr",
					"i_2"."Id"
				FROM
					"TableWithData" "i_2"
				WHERE
					"i_2"."Id" >= 7
				ORDER BY
					"i_2"."Id"
				FETCH NEXT @take ROWS ONLY
			) "t3"
		WHERE
			"TableWithData"."Id" = "t3"."Id" AND "TableWithData"."Value" = "t3"."Value_1" AND
			("TableWithData"."ValueStr" = "t3"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t3"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"i"."Value" as "Value_1",
					"i"."ValueStr",
					"i"."Id"
				FROM
					"TableWithData" "i"
				WHERE
					"i"."Id" >= 7
				ORDER BY
					"i"."Id"
				FETCH NEXT @take ROWS ONLY
			) "t1"
		WHERE
			"TableWithData"."Id" = "t1"."Id" AND "TableWithData"."Value" = "t1"."Value_1" AND
			("TableWithData"."ValueStr" = "t1"."ValueStr" OR "TableWithData"."ValueStr" IS NULL AND "t1"."ValueStr" IS NULL)
	)
RETURNING
	OLD."Id",
	OLD."Value",
	OLD."ValueStr",
	NEW."Id",
	NEW."Value",
	NEW."ValueStr"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

