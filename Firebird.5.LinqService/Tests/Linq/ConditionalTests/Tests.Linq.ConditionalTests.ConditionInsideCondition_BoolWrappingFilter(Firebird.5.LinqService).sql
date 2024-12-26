BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"s"."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN Mod("p"."ParentID", 2) = 0 THEN Mod("p"."ParentID", 3) = 0
				WHEN Mod("p"."ParentID", 4) = 0 THEN "p"."ParentID" > 0
				ELSE "p"."ParentID" < 5
			END as "Value_1"
		FROM
			"Parent" "p"
	) "s"
WHERE
	"s"."Value_1"

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

