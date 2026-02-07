-- Firebird.4 Firebird4

SELECT
	"t1"."Count1" + "t1"."Count1"
FROM
	"Parent" "t2"
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as "Count1"
			FROM
				"Child" "c_1"
			WHERE
				"t2"."ParentID" = "c_1"."ParentID"
		) "t1" ON 1=1

