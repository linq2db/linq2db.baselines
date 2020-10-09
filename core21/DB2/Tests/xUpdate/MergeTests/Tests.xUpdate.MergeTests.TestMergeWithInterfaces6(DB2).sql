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
		(1, '2')) "Source"
(
	"Id", 
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "ReviewIndexes"

