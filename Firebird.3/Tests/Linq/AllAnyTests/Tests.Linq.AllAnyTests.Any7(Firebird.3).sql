-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
	)
FROM rdb$database

