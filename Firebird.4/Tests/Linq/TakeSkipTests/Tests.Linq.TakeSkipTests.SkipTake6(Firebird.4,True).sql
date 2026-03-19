-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		FETCH NEXT 3 ROWS ONLY
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1",
	(
		SELECT
			"p"."ParentID"
		FROM
			"GrandChild" "p"
		OFFSET 12 ROWS FETCH NEXT 3 ROWS ONLY 
	) "p_1"
WHERE
	"t1"."ParentID" = "p_1"."ParentID"

