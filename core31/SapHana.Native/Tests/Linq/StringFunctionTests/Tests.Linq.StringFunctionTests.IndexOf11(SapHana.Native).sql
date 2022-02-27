BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1  -- Byte
SET     @p1 = 0

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN :"p1" = 1 THEN 0
		ELSE Locate("p"."FirstName", 'oh') - 1
	END = 1 AND
	"p"."PersonID" = 1

