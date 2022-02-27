BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "ReviewIndexes"
(
	"Id"    Int                                    NOT NULL,
	"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

MERGE INTO "ReviewIndexes" "Target"
USING (	SELECT 1, CAST('2' AS VARCHAR(1)) FROM rdb$database) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
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
-- Firebird3 Firebird

DROP TABLE "ReviewIndexes"

