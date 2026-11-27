-- DB2 DB2.LUW DB2LUW
SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("f"."added")
FROM
	"vb_activity" "f"
		INNER JOIN "vb_activity_person" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= CAST('2017-01-01' AS timestamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

