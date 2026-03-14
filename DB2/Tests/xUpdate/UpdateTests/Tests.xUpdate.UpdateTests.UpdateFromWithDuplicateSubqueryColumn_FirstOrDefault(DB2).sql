-- DB2 DB2.LUW DB2LUW
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1

UPDATE
	"InsertFromWithConstantsTable"
SET
	("Value1", "Value2", "Value3", "Value4") = (
		SELECT
			"t1"."Value1",
			"t1"."Value1",
			'string 1',
			'string 1'
		FROM
			"InsertFromWithConstantsTable" "r_2"
				LEFT JOIN (
					SELECT
						"r_1"."Value3" as "Value1"
					FROM
						"InsertFromWithConstantsTable" "r_1"
					WHERE
						"r_1"."Id" = @id1
					FETCH NEXT 1 ROWS ONLY
				) "t1" ON 1=1
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r_2"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"InsertFromWithConstantsTable" "r"
		WHERE
			"InsertFromWithConstantsTable"."Id" = "r"."Id"
	)

