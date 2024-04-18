﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
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
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
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
-- Firebird.4 Firebird4

UPDATE
	"TableToInsert"
SET
	"TableToInsert"."Value" = (
		SELECT
			"r"."Value"
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 2 AS "Id", CAST('Janet Updated' AS VARCHAR(13)) AS "Value" FROM rdb$database
					UNION ALL
					SELECT 3, CAST('Doe Updated' AS VARCHAR(11)) FROM rdb$database) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"TableToInsert"."Id" = "t"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" "t_1"
				INNER JOIN (
					SELECT 2 AS "Id", CAST('Janet Updated' AS VARCHAR(13)) AS "Value" FROM rdb$database
					UNION ALL
					SELECT 3, CAST('Doe Updated' AS VARCHAR(11)) FROM rdb$database) "r_1" ON "t_1"."Id" = "r_1"."Id"
		WHERE
			"TableToInsert"."Id" = "t_1"."Id"
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

