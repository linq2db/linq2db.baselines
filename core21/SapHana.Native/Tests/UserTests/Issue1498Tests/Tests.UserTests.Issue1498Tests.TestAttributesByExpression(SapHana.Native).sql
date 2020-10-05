BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Topic"
(
	"Id"    Integer       NOT NULL,
	"Title" NVarChar(255)     NULL,
	"Text"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Message"
(
	"Id"      Integer       NOT NULL,
	"TopicId" Integer       NOT NULL,
	"Text"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana
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
	:"Id",
	:"Title",
	:"Text"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"key_data_result"."Id",
	"key_data_result"."Title",
	"key_data_result"."Text",
	"detail"."Id"
FROM
	(
		SELECT DISTINCT
			"t1"."Id",
			"t1"."Title",
			"t1"."Text"
		FROM
			(
				SELECT
					"x"."Id",
					"x"."Title",
					"x"."Text"
				FROM
					"Topic" "x"
				WHERE
					"x"."Id" = 6
				LIMIT :"take"
			) "t1"
	) "key_data_result"
		INNER JOIN "Message" "detail" ON "key_data_result"."Id" = "detail"."TopicId"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Message"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Topic"

