BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "Person" "Target"
USING (
	SELECT CAST(NULL AS Int), CAST(NULL AS NVarChar(255)), CAST(NULL AS NVarChar(255)), CAST(NULL AS NVarChar(255)), CAST(NULL AS Char(1))
	FROM "Person"	WHERE 1 = 0
)
 "Source"
(
	ID,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
ON ("Target"."PersonID" = "Source".ID)

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

