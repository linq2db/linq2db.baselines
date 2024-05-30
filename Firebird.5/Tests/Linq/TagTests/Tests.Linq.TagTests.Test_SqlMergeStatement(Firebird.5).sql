BeforeExecute
-- Firebird.5 Firebird4

/* My Test */
MERGE INTO "TestMerge1" "Target"
USING (
	SELECT
		"t1"."Id" as "source_Id",
		"t1"."Field1" as "source_Field1",
		"t1"."Field2" as "source_Field2",
		"t1"."Field4" as "source_Field4"
	FROM
		"TestMerge2" "t1"
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

