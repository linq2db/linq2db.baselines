BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Topic"
			(
				"Id"    Int                                    NOT NULL,
				"Title" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Text"  VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Topic" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Message"
			(
				"Id"      Int                                    NOT NULL,
				"TopicId" Int                                    NOT NULL,
				"Text"    VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Message" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird
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
-- Firebird
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
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Firebird
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
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"key_data_result"."Id",
	"detail"."Id"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT FIRST @take
					"x"."Id"
				FROM
					"Topic" "x"
				WHERE
					"x"."Id" = 6
			) "t1"
	) "key_data_result"
		INNER JOIN "Message" "detail" ON "detail"."TopicId" = "key_data_result"."Id"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Message')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Message"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Topic')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Topic"';
END

