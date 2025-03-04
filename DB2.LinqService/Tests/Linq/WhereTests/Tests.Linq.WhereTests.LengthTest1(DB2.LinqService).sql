﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"nm"."MiddleName"
FROM
	(
		SELECT
			CHARACTER_LENGTH("p"."MiddleName",CODEUNITS32) as "Value_1",
			"p"."MiddleName"
		FROM
			"Person" "p"
	) "nm"
WHERE
	"nm"."Value_1" <> 0 OR "nm"."Value_1" IS NULL

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

