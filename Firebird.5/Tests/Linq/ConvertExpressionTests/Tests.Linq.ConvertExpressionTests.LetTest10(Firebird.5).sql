-- Firebird.5 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
	)
FROM rdb$database

