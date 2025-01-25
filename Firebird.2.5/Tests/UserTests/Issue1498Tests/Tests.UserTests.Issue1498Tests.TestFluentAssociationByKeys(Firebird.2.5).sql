BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id"
FROM
	(
		SELECT FIRST 1
			"x"."Id"
		FROM
			"Topic" "x"
		WHERE
			"x"."Id" = 6
	) "m_1"
		INNER JOIN "Message" "d" ON "m_1"."Id" = "d"."TopicId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6

BeforeExecute
DisposeTransaction
