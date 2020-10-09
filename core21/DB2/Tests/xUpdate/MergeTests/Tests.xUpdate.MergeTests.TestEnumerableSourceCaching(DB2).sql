BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "CacheTestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_CacheTestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "CacheTestTable" "Target"
USING (	VALUES
		(1, 1),
		(2, 2)) "Source"
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
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Id", 
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "CacheTestTable" "Target"
USING (	VALUES
		(1, 1),
		(2, 4),
		(3, 3)) "Source"
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
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."Id", 
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "CacheTestTable"

