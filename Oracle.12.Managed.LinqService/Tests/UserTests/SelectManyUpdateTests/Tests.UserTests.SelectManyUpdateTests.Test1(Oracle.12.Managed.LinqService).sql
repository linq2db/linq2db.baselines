BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int64
SET     @Value1 = NULL

UPDATE
	"Parent"
SET
	"Value1" = :Value1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" x
				INNER JOIN "Parent" a_Values ON x."ParentID" = a_Values."Value1"
		WHERE
			x."ParentID" IN (0, 0) AND "Parent"."ParentID" = a_Values."ParentID"
	)

