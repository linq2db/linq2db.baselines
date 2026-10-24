-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	"c_2"."IsOne"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				CASE
					WHEN "c_1"."Value1" = 1 THEN TRUE
					ELSE FALSE
				END as "IsOne"
			FROM
				"Parent" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID" AND ("c_1"."Value1" <> 1 OR "c_1"."Value1" IS NULL)
			FETCH NEXT 1 ROWS ONLY
		) "c_2"

-- Firebird.5 Firebird4
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				1 as "c1"
			FROM
				"Parent" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID" AND NOT ("c_1"."Value1" = 1 AND "c_1"."Value1" IS NOT NULL OR "c_1"."ParentID" = 3)
			FETCH NEXT 1 ROWS ONLY
		) "c_2"

