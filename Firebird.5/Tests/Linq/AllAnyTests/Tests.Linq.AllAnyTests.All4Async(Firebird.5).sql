-- Firebird.5 Firebird4

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" <= 3
	)
FROM rdb$database

