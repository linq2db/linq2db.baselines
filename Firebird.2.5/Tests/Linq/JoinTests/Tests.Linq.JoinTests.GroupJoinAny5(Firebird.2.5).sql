-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"t1"."ParentID" = "c_1"."ParentID"
		)
			THEN '1'
		ELSE '0'
	END
FROM
	"Parent" "t1"

