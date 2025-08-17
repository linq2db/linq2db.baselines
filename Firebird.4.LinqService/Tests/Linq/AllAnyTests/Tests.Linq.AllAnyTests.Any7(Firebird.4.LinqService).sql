BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "t1"
	)
FROM rdb$database

