BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "Person" "Target"
USING (
	SELECT NULL "ID", NULL "FirstName", NULL "LastName", NULL "MiddleName", NULL "Gender"
	FROM DUMMY	WHERE 1 = 0
)
 "Source"
ON ("Target"."PersonID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Target"."FirstName" = "Source"."FirstName",
	"Target"."LastName" = "Source"."LastName",
	"Target"."MiddleName" = "Source"."MiddleName",
	"Target"."Gender" = "Source"."Gender"

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
	"Source"."FirstName",
	"Source"."LastName",
	"Source"."MiddleName",
	"Source"."Gender"
)

