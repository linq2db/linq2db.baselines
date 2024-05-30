BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1622Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1622Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1622Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1622Table"
			(
				"Id"       Int                                    NOT NULL,
				"SomeText" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue1622Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."SomeText" = 'Value1_suffix'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1622Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1622Table"';
END

