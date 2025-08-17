BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 11
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 11

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "param"
				INNER JOIN "Parent" "a_Parent" ON "param"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = @ParentID AND "a_Parent"."Value1" = @Value1
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

