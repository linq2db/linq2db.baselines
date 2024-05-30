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
		Target_1.ID as "source_ID",
		Target_1."Field1" as "source_Field1",
		Target_1."Field2" as "source_Field2",
		Target_1."Field3" as "source_Field3",
		Target_1."Field4" as "source_Field4",
		Target_1."field11" as "source_field1_1",
		Target_1."Field5" as "source_Field5"
	FROM
		"TestTable" Target_1
) "Source"
ON (Target.ID = "Source"."source_ID")

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
	"Source"."source_ID",
	"Source"."source_Field1",
	"Source"."source_Field2",
	"Source"."source_Field3",
	"Source"."source_Field4",
	"Source"."source_field1_1",
	"Source"."source_Field5"
)

WHEN MATCHED THEN
UPDATE
SET
	"Field1" = "Source"."source_Field1",
	"Field2" = "Source"."source_Field2",
	"Field3" = "Source"."source_Field3",
	"Field4" = "Source"."source_Field4",
	"field11" = "Source"."source_field1_1",
	"Field5" = "Source"."source_Field5"

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

