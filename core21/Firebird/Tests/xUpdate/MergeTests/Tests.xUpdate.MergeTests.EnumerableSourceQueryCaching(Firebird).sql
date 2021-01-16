BeforeExecute
-- Firebird

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird

MERGE INTO "TestMerge1" "Target"
USING (	SELECT 0, 1, 2, 4 FROM rdb$database) "Source"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."Id",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field4"
)

BeforeExecute
-- Firebird

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird

MERGE INTO "TestMerge1" "Target"
USING (	SELECT 10, 11, 12, 14 FROM rdb$database) "Source"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."Id",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field4"
)

BeforeExecute
-- Firebird

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird

MERGE INTO "TestMerge1" "Target"
USING (	SELECT 20, 21, 22, 24 FROM rdb$database
	UNION ALL
	SELECT 30, 31, 32, 34 FROM rdb$database) "Source"
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Field1",
	"Field2",
	"Field4"
)
VALUES
(
	"Source"."Id",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field4"
)

