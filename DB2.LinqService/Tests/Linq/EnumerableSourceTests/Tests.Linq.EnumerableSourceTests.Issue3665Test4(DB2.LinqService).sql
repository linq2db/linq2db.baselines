﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."PersonID",
	"y"."value__"
FROM
	"Person" "x",
	(VALUES
		(1), (3)
	) "y"("value__")

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

