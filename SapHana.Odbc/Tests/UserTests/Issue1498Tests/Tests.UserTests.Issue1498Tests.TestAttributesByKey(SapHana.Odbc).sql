BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Topic"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Topic"
(
	"Id"    Integer       NOT NULL,
	"Title" NVarChar(255)     NULL,
	"Text"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Message"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Message"
(
	"Id"      Integer       NOT NULL,
	"TopicId" Integer       NOT NULL,
	"Text"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'text'

INSERT INTO "Topic"
(
	"Id",
	"Title",
	"Text"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
		LIMIT 1
	) "m_1"
		INNER JOIN "Message" "d" ON "m_1"."Id" = "d"."TopicId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Message"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Topic"

