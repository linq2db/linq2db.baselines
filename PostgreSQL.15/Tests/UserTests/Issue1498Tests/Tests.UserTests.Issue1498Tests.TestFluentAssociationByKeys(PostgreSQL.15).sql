-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title Text(5) -- String
SET     @Title = 'title'
DECLARE @Text Text(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
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

-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id"
FROM
	(
		SELECT
			x."Id"
		FROM
			"Topic" x
		WHERE
			x."Id" = 6
		LIMIT 1
	) m_1
		INNER JOIN "Message" d ON m_1."Id" = d."TopicId"

-- PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"Topic" x
WHERE
	x."Id" = 6
LIMIT 1

