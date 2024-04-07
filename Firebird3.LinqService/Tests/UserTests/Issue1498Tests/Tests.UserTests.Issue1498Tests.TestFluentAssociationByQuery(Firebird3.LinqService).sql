BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
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
	CAST(@Id AS Int),
	CAST(@Title AS VARCHAR(5)),
	CAST(@Text AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TopicId AS Int),
	CAST(@Text AS VARCHAR(7))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text VarChar(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TopicId AS Int),
	CAST(@Text AS VARCHAR(7))
)

BeforeExecute
-- Firebird3 Firebird

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
		INNER JOIN "Message" "d" ON "d"."TopicId" = "m_1"."Id"

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

