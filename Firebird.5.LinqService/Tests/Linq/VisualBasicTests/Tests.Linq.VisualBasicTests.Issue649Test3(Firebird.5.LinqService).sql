﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	MAX("f"."added")
FROM
	"activity649" "f"
		INNER JOIN "person649" "a_Person" ON "f"."personid" = "a_Person"."personid"
WHERE
	"f"."added" >= CAST('2017-01-01' AS TimeStamp)
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

