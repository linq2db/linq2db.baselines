BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

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
	"FirstName" = "Source"."FirstName",
	"LastName" = "Source"."LastName",
	"MiddleName" = "Source"."MiddleName",
	"Gender" = "Source"."Gender"

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

