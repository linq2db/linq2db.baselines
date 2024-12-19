BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
					LEFT JOIN LATERAL (
						SELECT
							"c_1"."ParentID",
							"c_1"."ChildID"
						FROM
							"Child" "c_1"
						WHERE
							"c_1"."ParentID" = "p"."ParentID"
						FETCH NEXT 1 ROWS ONLY
					) "t1" ON 1=1
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

