BeforeExecute
-- Firebird3 Firebird
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @Value1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
				INNER JOIN "Parent" "c_1" ON "x"."ParentID" = "c_1"."Value1"
		WHERE
			"x"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "x"."ParentID"
	)

