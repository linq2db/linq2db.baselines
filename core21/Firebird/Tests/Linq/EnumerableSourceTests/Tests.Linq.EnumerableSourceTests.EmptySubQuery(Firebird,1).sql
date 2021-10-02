BeforeExecute
-- Firebird

CREATE TABLE "TableToInsert"
(
	"Id"    Int                                    NOT NULL,
	"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_TableToInsert" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

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
			(SELECT NULL"Id", NULL"Value" FROM rdb$database WHERE 1 = 0) "t1"
		WHERE
			"t"."Id" = "t1"."Id" AND ("t"."Value" = "t1"."Value" OR "t"."Value" IS NULL AND "t1"."Value" IS NULL)
	)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableToInsert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableToInsert"';
END

