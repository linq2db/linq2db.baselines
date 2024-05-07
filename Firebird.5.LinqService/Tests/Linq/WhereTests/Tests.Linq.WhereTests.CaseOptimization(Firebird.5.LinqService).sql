BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithString"
			(
				"Id"          Int                                    NOT NULL,
				"StringValue" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue VarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~'

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithString')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithString"';
END

