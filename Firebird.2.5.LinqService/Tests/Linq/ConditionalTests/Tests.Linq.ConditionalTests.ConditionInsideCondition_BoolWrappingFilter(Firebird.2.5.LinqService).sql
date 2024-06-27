BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"s_1"."Value_1"
FROM
	(
		SELECT
			CASE
				WHEN Mod("s"."ParentID", 2) = 0 THEN CASE
					WHEN Mod("s"."ParentID", 3) = 0 THEN '1'
					ELSE '0'
				END
				WHEN Mod("s"."ParentID", 4) = 0 THEN CASE
					WHEN "s"."ParentID" > 0 THEN '1'
					ELSE '0'
				END
				ELSE CASE
					WHEN "s"."ParentID" < 5 THEN '1'
					ELSE '0'
				END
			END as "Value_1"
		FROM
			"Parent" "s"
	) "s_1"
WHERE
	"s_1"."Value_1" = '1'

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

