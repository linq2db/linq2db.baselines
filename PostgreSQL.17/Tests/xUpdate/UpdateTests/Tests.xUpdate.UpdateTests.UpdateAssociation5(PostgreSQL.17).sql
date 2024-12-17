﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"BoolValue" = CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				"Parent" x_1
			WHERE
				t1."ID" = x_1."ParentID" AND (x_1."Value1" <> 1 OR x_1."Value1" IS NULL)
		)
			THEN True
		ELSE False
	END
FROM
	(
		SELECT DISTINCT
			"a_Table1"."ID",
			"a_Table1"."BoolValue"
		FROM
			"Parent" x
				INNER JOIN "LinqDataTypes" "a_Table1" ON x."ParentID" = "a_Table1"."ID"
		WHERE
			x."ParentID" IN (10000, 20000)
	) t1
WHERE
	"LinqDataTypes"."ID" = t1."ID" AND CASE
		WHEN "LinqDataTypes"."BoolValue" = True THEN True
		ELSE False
	END = CASE
		WHEN t1."BoolValue" = True THEN True
		ELSE False
	END

