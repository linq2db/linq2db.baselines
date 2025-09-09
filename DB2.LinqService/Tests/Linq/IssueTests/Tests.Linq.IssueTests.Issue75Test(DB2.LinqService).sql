BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c2"
		WHERE
			"c2"."ParentID" = "c_1"."ParentID"
	),
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "c2_1"
		WHERE
			"c2_1"."ParentID" = "c_1"."ParentID"
	) AS smallint),
	CAST(NOT EXISTS(
		SELECT
			*
		FROM
			"Child" "c2_2"
		WHERE
			"c2_2"."ParentID" <> "c_1"."ParentID"
	) AS smallint),
	(
		SELECT
			MIN("c2_3"."ChildID")
		FROM
			"Child" "c2_3"
		WHERE
			"c2_3"."ParentID" = "c_1"."ParentID"
	),
	(
		SELECT
			MAX("c2_4"."ChildID")
		FROM
			"Child" "c2_4"
		WHERE
			"c2_4"."ParentID" = "c_1"."ParentID"
	)
FROM
	"Child" "c_1"
		INNER JOIN "Parent" "parent_1" ON "c_1"."ParentID" = "parent_1"."ParentID"
WHERE
	"parent_1"."Value1" < 7

