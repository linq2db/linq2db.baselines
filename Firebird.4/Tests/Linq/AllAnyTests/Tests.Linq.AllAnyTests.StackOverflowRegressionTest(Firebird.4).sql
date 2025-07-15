BeforeExecute
-- Firebird.4 Firebird4

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
	)
FROM rdb$database

