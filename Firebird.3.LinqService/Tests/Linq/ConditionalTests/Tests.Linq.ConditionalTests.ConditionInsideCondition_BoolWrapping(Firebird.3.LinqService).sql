BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN Mod("p"."ParentID", 2) = 0 THEN Mod("p"."ParentID", 3) = 0
		WHEN Mod("p"."ParentID", 4) = 0 THEN "p"."ParentID" > 0
		ELSE "p"."ParentID" < 5
	END
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

