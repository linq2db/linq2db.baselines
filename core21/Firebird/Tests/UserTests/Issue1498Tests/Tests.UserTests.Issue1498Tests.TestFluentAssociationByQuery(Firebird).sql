BeforeExecute
-- Firebird

CREATE TABLE "Topic"
(
	"Id"    Int                                    NOT NULL,
	"Title" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Text"  VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "Message"
(
	"Id"      Int                                    NOT NULL,
	"TopicId" Int                                    NOT NULL,
	"Text"    VarChar(255) CHARACTER SET UNICODE_FSS
)

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
	"key_data_result"."Title",
	"key_data_result"."Text",
	"detail"."Id"
FROM
	(
		SELECT DISTINCT
			"t1"."Id",
			"t1"."Title",
			"t1"."Text"
		FROM
			(
				SELECT FIRST @take
					"x"."Id",
					"x"."Title",
					"x"."Text"
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

DROP TABLE "Message"

BeforeExecute
-- Firebird

DROP TABLE "Topic"

