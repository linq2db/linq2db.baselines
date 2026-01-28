-- Firebird.5 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
				LEFT JOIN LATERAL (
					SELECT
						1 as "c1"
					FROM
						"Child" "c_1"
					WHERE
						"c_1"."ParentID" = "p"."ParentID"
					FETCH NEXT 1 ROWS ONLY
				) "t1" ON 1=1
	)
FROM rdb$database

