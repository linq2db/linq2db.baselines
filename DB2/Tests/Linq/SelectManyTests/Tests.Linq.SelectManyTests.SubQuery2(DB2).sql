﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p2"."FirstName"
FROM
	"Person" "p",
	"Person" "p2"
WHERE
	("p"."PersonID" = 1 OR "p"."PersonID" = 2) AND "p2"."PersonID" <> 2 AND
	"p"."PersonID" = "p2"."PersonID"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p2"."FirstName"
FROM
	"Person" "p",
	"Person" "p2"
WHERE
	("p"."PersonID" = 1 OR "p"."PersonID" = 2) AND "p2"."PersonID" <> 2 AND
	"p"."PersonID" = "p2"."PersonID"

