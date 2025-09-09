BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
	)
FROM rdb$database

