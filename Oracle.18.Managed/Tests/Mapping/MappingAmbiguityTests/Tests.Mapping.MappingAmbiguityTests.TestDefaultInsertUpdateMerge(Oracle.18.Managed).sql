﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestTable"
		(
			ID        Int          NOT NULL,
			"Field1"  Int          NOT NULL,
			"Field2"  Int          NOT NULL,
			"Field3"  Int          NOT NULL,
			"Field4"  Int          NOT NULL,
			"field11" VarChar(255)     NULL,
			"Field5"  Int          NOT NULL,

			CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

MERGE INTO "TestTable" Target
USING (
	SELECT
		Target_1.ID,
		Target_1."Field1",
		Target_1."Field2",
		Target_1."Field3",
		Target_1."Field4",
		Target_1."field11" as "field1_1",
		Target_1."Field5"
	FROM
		"TestTable" Target_1
) "Source"
ON (Target.ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Field1",
	"Field2",
	"Field3",
	"Field4",
	"field11",
	"Field5"
)
VALUES
(
	"Source".ID,
	"Source"."Field1",
	"Source"."Field2",
	"Source"."Field3",
	"Source"."Field4",
	"Source"."field1_1",
	"Source"."Field5"
)

WHEN MATCHED THEN
UPDATE
SET
	Target."Field1" = "Source"."Field1",
	Target."Field2" = "Source"."Field2",
	Target."Field3" = "Source"."Field3",
	Target."Field4" = "Source"."Field4",
	Target."field11" = "Source"."field1_1",
	Target."Field5" = "Source"."Field5"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

