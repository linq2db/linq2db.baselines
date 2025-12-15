-- Firebird.4 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			11 = "c_1"."ParentID"
	)
FROM rdb$database

