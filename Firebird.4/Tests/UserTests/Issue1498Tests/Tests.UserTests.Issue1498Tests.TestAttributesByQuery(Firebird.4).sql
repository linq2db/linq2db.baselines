BeforeExecute
-- Firebird.4 Firebird4
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id"
FROM
	(
		SELECT
			"x"."Id"
		FROM
			"Topic" "x"
		WHERE
			"x"."Id" = 6
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Message" "d" ON "d"."TopicId" = "m_1"."Id"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
