-- SapHana.Native SapHana
SELECT
	"m_2"."ParentID_1",
	"m_2"."Value_1",
	CASE
		WHEN "m_2"."ParentID" < 4 THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			"m_1"."ParentID",
			"m_1"."ParentID" as "ParentID_1",
			"m_1"."Value1" as "Value_1"
		FROM
			"Parent" "m_1"
		WHERE
			"m_1"."ParentID" < 4
		UNION ALL
		SELECT
			"p"."ParentID",
			"p"."ParentID" as "ParentID_1",
			"p"."Value1" as "Value_1"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" >= 4
	) "m_2"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

