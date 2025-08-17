BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_3"."ParentID",
	"c_3"."ChildID"
FROM
	(
		SELECT
			"c_1"."ParentID",
			CAST(NULL AS Int) as "ChildID"
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = 1
		UNION ALL
		SELECT
			CAST(NULL AS Int) as "ParentID",
			"c_2"."ChildID" + 1000 as "ChildID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ParentID" = 3
	) "c_3"
WHERE
	"c_3"."ParentID" = 1

