-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
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
		INNER JOIN "ForumMessage" "d" ON "m_1"."Id" = "d"."TopicId"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"ForumTopic" "x"
WHERE
	"x"."Id" = 6
FETCH NEXT 1 ROWS ONLY

