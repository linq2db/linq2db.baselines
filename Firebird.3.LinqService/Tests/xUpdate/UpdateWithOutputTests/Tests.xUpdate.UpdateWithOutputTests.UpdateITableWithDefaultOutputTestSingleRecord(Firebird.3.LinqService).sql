BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 0
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = '0Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Integer -- Int32
SET     @Value = -1
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-1Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Integer -- Int32
SET     @Value = -2
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-2Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Integer -- Int32
SET     @Value = -3
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-3Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Integer -- Int32
SET     @Value = -4
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-4Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value Integer -- Int32
SET     @Value = -5
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-5Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value Integer -- Int32
SET     @Value = -6
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-6Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value Integer -- Int32
SET     @Value = -7
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-7Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value Integer -- Int32
SET     @Value = -8
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = '-8Dst'

INSERT INTO "DestinationTable"
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
-- Firebird.3 Firebird3

UPDATE
	"DestinationTable"
SET
	"Id" = (
		SELECT
			"t2"."Id"
		FROM
			"TableWithData" "t2"
				INNER JOIN "DestinationTable" "t_1" ON "t_1"."Id" = "t2"."Id"
		WHERE
			"t2"."Id" = 3 AND
			"DestinationTable"."Id" = "t_1"."Id" AND
			"DestinationTable"."Value" = "t_1"."Value" AND
			("DestinationTable"."ValueStr" = "t_1"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_1"."ValueStr" IS NULL)
	),
	"Value" = (
		SELECT
			"t3"."Value"
		FROM
			"TableWithData" "t3"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "t3"."Id"
		WHERE
			"t3"."Id" = 3 AND
			"DestinationTable"."Id" = "t_2"."Id" AND
			"DestinationTable"."Value" = "t_2"."Value" AND
			("DestinationTable"."ValueStr" = "t_2"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_2"."ValueStr" IS NULL)
	),
	"ValueStr" = (
		SELECT
			"t4"."ValueStr"
		FROM
			"TableWithData" "t4"
				INNER JOIN "DestinationTable" "t_3" ON "t_3"."Id" = "t4"."Id"
		WHERE
			"t4"."Id" = 3 AND
			"DestinationTable"."Id" = "t_3"."Id" AND
			"DestinationTable"."Value" = "t_3"."Value" AND
			("DestinationTable"."ValueStr" = "t_3"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_3"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableWithData" "t1"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "t1"."Id"
		WHERE
			"t1"."Id" = 3 AND
			"DestinationTable"."Id" = "t"."Id" AND
			"DestinationTable"."Value" = "t"."Value" AND
			("DestinationTable"."ValueStr" = "t"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t"."ValueStr" IS NULL)
	)
RETURNING
	"DestinationTable"."Id",
	"DestinationTable"."Value",
	"DestinationTable"."ValueStr",
	"DestinationTable"."Id",
	"DestinationTable"."Value",
	"DestinationTable"."ValueStr"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DestinationTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DestinationTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithData')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithData"';
END

