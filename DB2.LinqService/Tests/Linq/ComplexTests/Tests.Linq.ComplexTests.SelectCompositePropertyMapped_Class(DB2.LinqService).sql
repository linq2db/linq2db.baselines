BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"User" "u"
FETCH NEXT 2 ROWS ONLY

