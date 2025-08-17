BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "t"
		WHERE
			"t"."ParentID" = @id AND "t"."ParentID" = "g_1"."ParentID"
	)
GROUP BY
	"g_1"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 2

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "t"
		WHERE
			"t"."ParentID" = @id AND "t"."ParentID" = "g_1"."ParentID"
	)
GROUP BY
	"g_1"."ParentID"

