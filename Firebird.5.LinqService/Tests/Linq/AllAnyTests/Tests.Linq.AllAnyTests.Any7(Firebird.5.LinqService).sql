BeforeExecute
-- Firebird.5 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
	)
FROM rdb$database

