﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TableToInsert"
			(
				"Id"    Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value VarChar(3) -- String
SET     @Value = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"TableToInsert" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 3 AS "Id", CAST('Janet' AS VARCHAR(5)) AS "Value" FROM rdb$database
				UNION ALL
				SELECT 4, CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

