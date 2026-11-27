-- Firebird.4 Firebird4
SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("f"."added")
FROM
	"vb_activity" "f"
		INNER JOIN "vb_activity_person" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= CAST('2017-01-01' AS TimeStamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

