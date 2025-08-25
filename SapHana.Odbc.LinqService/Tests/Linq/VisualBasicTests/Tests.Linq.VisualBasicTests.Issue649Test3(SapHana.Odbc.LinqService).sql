BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("f"."added")
FROM
	"activity649" "f"
		INNER JOIN "person649" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= To_Timestamp('2017-01-01 00:00:00.000')
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

