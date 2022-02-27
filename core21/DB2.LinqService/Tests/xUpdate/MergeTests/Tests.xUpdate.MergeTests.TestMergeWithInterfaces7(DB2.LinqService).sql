BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "ReviewIndexes"
(
	"Id"    Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (	VALUES
		(1)) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'3'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ReviewIndexes"

