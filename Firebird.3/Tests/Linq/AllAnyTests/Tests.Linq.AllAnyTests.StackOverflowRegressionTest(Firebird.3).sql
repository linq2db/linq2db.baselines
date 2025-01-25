BeforeExecute
-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
	)
FROM rdb$database

