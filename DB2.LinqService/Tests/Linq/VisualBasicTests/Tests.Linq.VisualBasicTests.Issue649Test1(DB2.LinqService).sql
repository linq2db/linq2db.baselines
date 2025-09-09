BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("VBIt"."added")
FROM
	"activity649" "VBIt"
		INNER JOIN "person649" "a_Person" ON "VBIt"."personid" = "a_Person"."personid"
WHERE
	"VBIt"."added" >= CAST('2017-01-01' AS timestamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

