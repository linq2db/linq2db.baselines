BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue2434Table"
(
	"Id"        Int           NOT NULL,
	"FirstName" NVarChar(255)     NULL,
	"LastName"  NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName",
	"t1"."FirstName" || ' ' || "t1"."LastName"
FROM
	"Issue2434Table" "t1"
ORDER BY
	"t1"."FirstName" || ' ' || "t1"."LastName"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue2434Table"

