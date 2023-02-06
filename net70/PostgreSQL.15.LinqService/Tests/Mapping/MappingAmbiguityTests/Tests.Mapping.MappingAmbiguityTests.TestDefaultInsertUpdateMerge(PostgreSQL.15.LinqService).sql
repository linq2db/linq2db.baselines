﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestTable"
(
	"ID"     Int  NOT NULL,
	"Field1" Int  NOT NULL,
	"Field2" Int  NOT NULL,
	"Field3" Int  NOT NULL,
	"Field4" Int  NOT NULL,
	field11  text     NULL,
	"Field5" Int  NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "TestTable" "Target"
USING
(
	SELECT
		"Target_1"."ID",
		"Target_1"."Field1",
		"Target_1"."Field2",
		"Target_1"."Field3",
		"Target_1"."Field4",
		"Target_1".field11 as field1_1,
		"Target_1"."Field5"
	FROM
		"TestTable" "Target_1"
) "Source"
(
	"ID",
	"Field1",
	"Field2",
	"Field3",
	"Field4",
	field1_1,
	"Field5"
)
ON ("Target"."ID" = "Source"."ID")

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Field1",
	"Field2",
	"Field3",
	"Field4",
	field11,
	"Field5"
)
VALUES
(
	"Source"."ID",
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field3",
	"Source"."Field4",
	"Source".field1_1,
	"Source"."Field5"
)

WHEN MATCHED THEN
UPDATE
SET
	"Field1" = "Source"."Field1",
	"Field2" = "Source"."Field2",
	"Field3" = "Source"."Field3",
	"Field4" = "Source"."Field4",
	field11 = "Source".field1_1,
	"Field5" = "Source"."Field5"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

