BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1622Table"
(
	"Id"       Int           NOT NULL,
	"SomeText" NVarChar(255)     NULL,

	CONSTRAINT "PK_Issue1622Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SomeText VarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."SomeText" = 'Value1_suffix'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."Id",
	"e"."SomeText"
FROM
	"Issue1622Table" "e"
WHERE
	"e"."Id" = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1622Table"

