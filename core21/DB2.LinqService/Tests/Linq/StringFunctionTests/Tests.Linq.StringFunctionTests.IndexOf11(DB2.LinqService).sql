﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 SmallInt(4) -- Int16
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
		WHEN @p1 = 1 THEN 0
		ELSE Locate('oh', "p"."FirstName") - 1
	END = 1 AND
	"p"."PersonID" = 1

