-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO "ForumTopic"
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

-- Firebird.5 Firebird4
SELECT
	"m_1"."Id",
	"d"."Id"
FROM
	(
		SELECT
			"x"."Id"
		FROM
			"ForumTopic" "x"
		WHERE
			"x"."Id" = 6
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "ForumMessage" "d" ON "d"."TopicId" = "m_1"."Id"

-- Firebird.5 Firebird4
SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"ForumTopic" "x"
WHERE
	"x"."Id" = 6
FETCH NEXT 1 ROWS ONLY

