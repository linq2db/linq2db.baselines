BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Title Varchar2(5) -- String
SET     @Title = 'title'
DECLARE @Text Varchar2(4) -- String
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

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
		FETCH NEXT 1 ROWS ONLY
	) m_1
		INNER JOIN "Message" d ON d."TopicId" = m_1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"Topic" x
WHERE
	x."Id" = 6
FETCH NEXT 1 ROWS ONLY

