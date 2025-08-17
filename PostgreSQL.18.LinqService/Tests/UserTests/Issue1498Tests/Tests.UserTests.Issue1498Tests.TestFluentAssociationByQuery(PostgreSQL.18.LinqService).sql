BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text Text(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	:Id,
	:TopicId,
	:Text
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text Text(7) -- String
SET     @Text = 'message'

INSERT INTO "Message"
(
	"Id",
	"TopicId",
	"Text"
)
VALUES
(
	:Id,
	:TopicId,
	:Text
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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
		INNER JOIN "Message" d ON d."TopicId" = m_1."Id"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	x."Id",
	x."Title",
	x."Text"
FROM
	"Topic" x
WHERE
	x."Id" = 6
LIMIT 1

