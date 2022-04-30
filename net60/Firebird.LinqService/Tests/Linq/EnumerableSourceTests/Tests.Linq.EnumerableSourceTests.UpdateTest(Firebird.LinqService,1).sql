BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

BeforeExecute
-- Firebird

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
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value_1 VarChar(3) -- String
SET     @Value_1 = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird

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
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

