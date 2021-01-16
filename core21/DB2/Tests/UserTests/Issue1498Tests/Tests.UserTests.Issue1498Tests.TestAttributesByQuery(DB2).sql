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

DROP TABLE "Message"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Topic"

