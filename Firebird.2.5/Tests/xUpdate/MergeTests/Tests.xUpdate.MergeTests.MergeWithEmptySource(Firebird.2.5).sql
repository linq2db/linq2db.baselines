BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "Person" "Target"
USING (
	SELECT NULL "source_ID", NULL "source_FirstName", NULL "source_LastName", NULL "source_MiddleName", NULL "source_Gender"
	FROM rdb$database	WHERE 1 = 0
)
 "Source"
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

