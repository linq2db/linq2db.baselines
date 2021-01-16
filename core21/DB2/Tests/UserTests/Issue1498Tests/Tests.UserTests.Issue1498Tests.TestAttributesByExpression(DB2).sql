BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Topic"
(
	"Id"    Int           NOT NULL,
	"Title" NVarChar(255)     NULL,
	"Text"  NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Message"
(
	"Id"      Int           NOT NULL,
	"TopicId" Int           NOT NULL,
	"Text"    NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

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
				FETCH FIRST 1 ROWS ONLY
			) "t1"
	) "key_data_result"
		INNER JOIN "Message" "detail" ON "key_data_result"."Id" = "detail"."TopicId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Title",
	"x"."Text"
FROM
	"Topic" "x"
WHERE
	"x"."Id" = 6
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Message"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Topic"

