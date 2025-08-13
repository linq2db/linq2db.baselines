BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Value1 BigInt -- Int64
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Value1" = CAST(@Value1 AS BigInt)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "x"
				INNER JOIN "Parent" "a_Values" ON "x"."ParentID" = "a_Values"."Value1"
		WHERE
			"x"."ParentID" IN (0, 0) AND "Parent"."ParentID" = "a_Values"."ParentID"
	)

