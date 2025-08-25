BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 0 AS "Id", 1 AS "Field1", 2 AS "Field2", 4 AS "Field4" FROM rdb$database) "Source"
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
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 10 AS "Id", 11 AS "Field1", 12 AS "Field2", 14 AS "Field4" FROM rdb$database) "Source"
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
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"TestMerge1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

MERGE INTO "TestMerge1" "Target"
USING (
	SELECT 20 AS "Id", 21 AS "Field1", 22 AS "Field2", 24 AS "Field4" FROM rdb$database
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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t1"."Field2",
	"t1"."Field3",
	"t1"."Field4",
	"t1"."Field5"
FROM
	"TestMerge1" "t1"
ORDER BY
	"t1"."Id"

