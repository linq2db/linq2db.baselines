-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
	)
FROM rdb$database

