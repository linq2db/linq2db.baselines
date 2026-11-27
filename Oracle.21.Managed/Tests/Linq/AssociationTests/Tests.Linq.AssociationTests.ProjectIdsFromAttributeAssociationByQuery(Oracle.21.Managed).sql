-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Title Varchar2(5) -- String
SET     @Title = 'title'
DECLARE @Text Varchar2(4) -- String
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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
		FETCH NEXT 1 ROWS ONLY
	) m_1
		INNER JOIN "ForumMessage" d ON d."TopicId" = m_1."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"ForumTopic" x
WHERE
	x."Id" = 6
FETCH NEXT 1 ROWS ONLY

