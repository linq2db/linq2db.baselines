﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("VBIt"."added")
FROM
	"activity649" "VBIt"
		INNER JOIN "person649" "a_Person" ON "VBIt"."personid" = "a_Person"."personid"
WHERE
	"VBIt"."added" >= To_Timestamp('2017-01-01 00:00:00.000')
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

