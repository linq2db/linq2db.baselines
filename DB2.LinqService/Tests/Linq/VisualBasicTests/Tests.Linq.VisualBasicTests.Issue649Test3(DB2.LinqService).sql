BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("f"."added")
FROM
	"activity649" "f"
		INNER JOIN "person649" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= CAST('2017-01-01' AS timestamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

