BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "Person" "Target"
USING (
	SELECT NULL, NULL, NULL, NULL, NULL
	FROM rdb$database	WHERE 1 = 0
)
 "Source"
(
	"source_ID",
	"source_FirstName",
	"source_LastName",
	"source_MiddleName",
	"source_Gender"
)
ON ("Target"."PersonID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"FirstName" = "Source"."source_FirstName",
	"LastName" = "Source"."source_LastName",
	"MiddleName" = "Source"."source_MiddleName",
	"Gender" = "Source"."source_Gender"

WHEN NOT MATCHED THEN
INSERT
(
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
VALUES
(
	"Source"."source_FirstName",
	"Source"."source_LastName",
	"Source"."source_MiddleName",
	"Source"."source_Gender"
)

