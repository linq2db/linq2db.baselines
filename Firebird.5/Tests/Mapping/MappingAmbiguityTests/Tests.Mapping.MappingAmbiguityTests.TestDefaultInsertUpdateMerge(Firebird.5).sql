BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "TestTable" "Target"
USING (
	SELECT
		"Target_1".ID as "source_ID",
		"Target_1"."Field1" as "source_Field1",
		"Target_1"."Field2" as "source_Field2",
		"Target_1"."Field3" as "source_Field3",
		"Target_1"."Field4" as "source_Field4",
		"Target_1"."field11" as "source_field1_1",
		"Target_1"."Field5" as "source_Field5"
	FROM
		"TestTable" "Target_1"
) "Source"
(
	"source_ID",
	"source_Field1",
	"source_Field2",
	"source_Field3",
	"source_Field4",
	"source_field1_1",
	"source_Field5"
)
ON ("Target".ID = "Source"."source_ID")

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

