-- DB2 DB2.LUW DB2LUW

WITH "cte" ("ChildID", "ParentID", "GrandChildID")
AS
(
	SELECT
		"gc1"."ChildID",
		"gc1"."GrandChildID",
		"gc1"."GrandChildID"
	FROM
		"GrandChild" "gc1"
	UNION ALL
	SELECT
		"t1"."ChildID",
		"t1"."ParentID",
		"t1"."ChildID" + 1
	FROM
		(
			SELECT
				"ct"."ChildID",
				"ct"."ParentID"
			FROM
				"GrandChild" "gc",
				"cte" "ct",
				"Parent" "p"
			WHERE
				"p"."ParentID" = "gc"."ParentID" AND "ct"."ChildID" = "gc"."ChildID" AND
				"ct"."GrandChildID" <= 10
		) "t1"
)
SELECT
	"m_1"."Key_1",
	"d"."ChildID",
	"d"."ParentID",
	"d"."GrandChildID"
FROM
	(
		SELECT DISTINCT
			Coalesce("t2"."ParentID", -1) as "Key_1"
		FROM
			"cte" "t2"
	) "m_1"
		INNER JOIN "cte" "d" ON "m_1"."Key_1" = Coalesce("d"."ParentID", -1)

-- DB2 DB2.LUW DB2LUW

WITH "cte" ("ChildID", "ParentID", "GrandChildID")
AS
(
	SELECT
		"gc1"."ChildID",
		"gc1"."GrandChildID",
		"gc1"."GrandChildID"
	FROM
		"GrandChild" "gc1"
	UNION ALL
	SELECT
		"t1"."ChildID",
		"t1"."ParentID",
		"t1"."ChildID" + 1
	FROM
		(
			SELECT
				"ct"."ChildID",
				"ct"."ParentID"
			FROM
				"GrandChild" "gc",
				"cte" "ct",
				"Parent" "p"
			WHERE
				"p"."ParentID" = "gc"."ParentID" AND "ct"."ChildID" = "gc"."ChildID" AND
				"ct"."GrandChildID" <= 10
		) "t1"
)
SELECT DISTINCT
	Coalesce("t2"."ParentID", -1)
FROM
	"cte" "t2"

