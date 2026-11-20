-- Firebird.3 Firebird3
SELECT
	"p"."ParentID",
	"x".X
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				CAST(1 AS Int) as X
			FROM rdb$database
			UNION ALL
			SELECT
				CAST(2 AS Int) as X
			FROM rdb$database
		) "x" ON 1=1

