BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @n Integer(4) -- Int32
SET     @n = -1
DECLARE @n_1 Integer(4) -- Int32
SET     @n_1 = -1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" < 2 AND
			"t1"."ParentID" = "ch"."ParentID" + 1 AND
			"t1"."ChildID" = "ch"."ChildID" AND
			"ch"."ParentID" > @n
	)
FROM
	(
		SELECT
			"ch_1"."ParentID" + 1 as "ParentID",
			"ch_1"."ChildID"
		FROM
			"Child" "ch_1"
		WHERE
			"ch_1"."ParentID" > @n_1
	) "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

