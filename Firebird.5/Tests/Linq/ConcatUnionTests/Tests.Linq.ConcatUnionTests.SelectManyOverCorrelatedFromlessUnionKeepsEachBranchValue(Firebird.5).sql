-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	"x".X
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				"p"."Value1" as X
			FROM rdb$database
			UNION ALL
			SELECT
				CAST(7 AS Int) as X
			FROM rdb$database
		) "x"

