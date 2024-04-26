BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN ('oh', 'oh''', 'oh\')

