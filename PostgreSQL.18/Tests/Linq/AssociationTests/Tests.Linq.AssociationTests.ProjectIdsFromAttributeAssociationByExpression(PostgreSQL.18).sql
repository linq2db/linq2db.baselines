-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title Text(5) -- String
SET     @Title = 'title'
DECLARE @Text Text(4) -- String
SET     @Text = 'text'

INSERT INTO "ForumTopic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	:Id,
	:Title,
	:Text
)

-- PostgreSQL.18 PostgreSQL12
SELECT
	m_1."Id",
	d."Id"
FROM
	(
		SELECT
			x."Id"
		FROM
			"ForumTopic" x
		WHERE
			x."Id" = 6
		LIMIT 1
	) m_1
		INNER JOIN "ForumMessage" d ON m_1."Id" = d."TopicId"

-- PostgreSQL.18 PostgreSQL12
SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"ForumTopic" x
WHERE
	x."Id" = 6
LIMIT 1

