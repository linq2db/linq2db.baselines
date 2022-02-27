BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "User"
(
	"city"      NVarChar(255)     NULL,
	"user_name" NVarChar(255)     NULL,
	"street"    NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "User"

