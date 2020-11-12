BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"BoolValue" = (NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" x
		WHERE
			t1."ID" = x."ParentID" AND (x."Value1" <> 1 OR x."Value1" IS NULL)
	))
FROM
	(
		SELECT DISTINCT
			"a_Table1"."BoolValue",
			"a_Table1"."ID"
		FROM
			"Parent" x_1
				INNER JOIN "LinqDataTypes" "a_Table1" ON x_1."ParentID" = "a_Table1"."ID"
		WHERE
			x_1."ParentID" IN (10000, 20000)
	) t1
WHERE
	"LinqDataTypes"."BoolValue" = t1."BoolValue" AND "LinqDataTypes"."ID" = t1."ID"

