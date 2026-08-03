-- Firebird.4 Firebird4
SELECT
	CASE
		WHEN Mod("s"."ParentID", 2) = 0 THEN Mod("s"."ParentID", 3) = 0
		WHEN Mod("s"."ParentID", 4) = 0 THEN "s"."ParentID" > 0
		ELSE "s"."ParentID" < 5
	END
FROM
	"Parent" "s"
WHERE
	CASE
		WHEN Mod("s"."ParentID", 2) = 0 THEN Mod("s"."ParentID", 3) = 0
		WHEN Mod("s"."ParentID", 4) = 0 THEN "s"."ParentID" > 0
		ELSE "s"."ParentID" < 5
	END

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

