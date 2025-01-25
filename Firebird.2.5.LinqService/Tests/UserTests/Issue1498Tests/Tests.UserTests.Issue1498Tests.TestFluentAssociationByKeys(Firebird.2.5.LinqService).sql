BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Topic"
			(
				"Id"    Int                                    NOT NULL,
				"Title" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Text"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Message"
			(
				"Id"      Int                                    NOT NULL,
				"TopicId" Int                                    NOT NULL,
				"Text"    VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id"
FROM
	(
		SELECT FIRST 1
			"x"."Id"
		FROM
			"Topic" "x"
		WHERE
			"x"."Id" = 6
	) "m_1"
		INNER JOIN "Message" "d" ON "m_1"."Id" = "d"."TopicId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

