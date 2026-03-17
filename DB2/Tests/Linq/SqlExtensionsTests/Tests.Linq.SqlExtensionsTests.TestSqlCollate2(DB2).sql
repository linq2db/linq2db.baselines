-- DB2 DB2.LUW DB2LUW

SELECT
	'1' || COLLATION_KEY_BIT("t1"."FirstName", 'SYSTEM_923_DE') || '2'
FROM
	"Person" "t1"

