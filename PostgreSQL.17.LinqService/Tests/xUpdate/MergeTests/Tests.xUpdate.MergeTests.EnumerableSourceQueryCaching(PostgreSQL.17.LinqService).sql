﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(0,1,2,4)
) "Source"
(
	"source_Id",
	"source_Field1",
	"source_Field2",
	"source_Field4"
)
ON ("Target"."Id" = "Source"."source_Id")

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
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2",
	t1."Field3",
	t1."Field4",
	t1."Field5"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(10,11,12,14)
) "Source"
(
	"source_Id",
	"source_Field1",
	"source_Field2",
	"source_Field4"
)
ON ("Target"."Id" = "Source"."source_Id")

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
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2",
	t1."Field3",
	t1."Field4",
	t1."Field5"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"TestMerge1" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "TestMerge1" "Target"
USING (VALUES
	(20,21,22,24), (30,31,32,34)
) "Source"
(
	"source_Id",
	"source_Field1",
	"source_Field2",
	"source_Field4"
)
ON ("Target"."Id" = "Source"."source_Id")

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
	"Source"."source_Id",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field4"
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Field1",
	t1."Field2",
	t1."Field3",
	t1."Field4",
	t1."Field5"
FROM
	"TestMerge1" t1
ORDER BY
	t1."Id"

