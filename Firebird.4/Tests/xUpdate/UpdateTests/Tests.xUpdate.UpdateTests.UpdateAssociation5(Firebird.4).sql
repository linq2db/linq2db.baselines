-- Firebird.4 Firebird4

UPDATE
	"LinqDataTypes"
SET
	"BoolValue" = (
		SELECT
			NOT EXISTS(
				SELECT
					*
				FROM
					"Parent" "x_2"
				WHERE
					"t1".ID = "x_2"."ParentID" AND ("x_2"."Value1" <> 1 OR "x_2"."Value1" IS NULL)
			)
		FROM
			(
				SELECT DISTINCT
					"a_Table1_1".ID,
					"a_Table1_1"."BoolValue"
				FROM
					"Parent" "x_1"
						INNER JOIN "LinqDataTypes" "a_Table1_1" ON "x_1"."ParentID" = "a_Table1_1".ID
				WHERE
					"x_1"."ParentID" IN (10000, 20000)
			) "t1"
		WHERE
			"LinqDataTypes".ID = "t1".ID AND "LinqDataTypes"."BoolValue" = "t1"."BoolValue"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
				INNER JOIN "LinqDataTypes" "a_Table1" ON "x"."ParentID" = "a_Table1".ID
		WHERE
			"x"."ParentID" IN (10000, 20000) AND "LinqDataTypes".ID = "a_Table1".ID AND
			"LinqDataTypes"."BoolValue" = "a_Table1"."BoolValue"
	)

