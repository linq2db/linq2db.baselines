﻿BeforeExecute
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
USING (	SELECT 1 FROM rdb$database) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")
WHEN MATCHED THEN DELETE

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "ReviewIndexes"

