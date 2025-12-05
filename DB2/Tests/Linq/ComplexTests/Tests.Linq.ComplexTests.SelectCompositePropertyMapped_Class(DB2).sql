-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"User" "u"
FETCH NEXT 2 ROWS ONLY

