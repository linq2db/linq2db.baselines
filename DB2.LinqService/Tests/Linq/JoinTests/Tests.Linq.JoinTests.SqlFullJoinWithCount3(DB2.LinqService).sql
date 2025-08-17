BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	CAST(COUNT("t1"."ParentID") = COUNT("right_2"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*) AS smallint)
FROM
	"Parent" "t1"
		FULL JOIN (
			SELECT
				"right_1"."ParentID"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> @id
		) "right_2" ON "right_2"."ParentID" = "t1"."ParentID"
FETCH NEXT 2 ROWS ONLY

