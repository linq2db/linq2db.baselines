BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		FETCH FIRST 3 ROWS ONLY
	) "t1"
WHERE
	"c_1"."ParentID" = "t1"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	(
		SELECT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"p"."ParentID",
					ROW_NUMBER() OVER () as RN
				FROM
					"GrandChild" "p"
			) "t1"
		WHERE
			"t1".RN > 12 AND "t1".RN <= 15
	) "t2"
WHERE
	"c_1"."ParentID" = "t2"."ParentID"

