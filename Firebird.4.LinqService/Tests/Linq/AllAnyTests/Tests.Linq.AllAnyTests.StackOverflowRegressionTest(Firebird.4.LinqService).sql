BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
	)
FROM rdb$database

