﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"b_1"."Date_2",
	COUNT(*)
FROM
	(
		SELECT
			DATE("b"."DateTimeValue") as "Date_1",
			DATE("b"."DateTimeValue") as "Date_2"
		FROM
			"LinqDataTypes" "b"
				INNER JOIN "Parent" "p" ON "b".ID = "p"."ParentID"
	) "b_1"
GROUP BY
	"b_1"."Date_1",
	"b_1"."Date_2"

