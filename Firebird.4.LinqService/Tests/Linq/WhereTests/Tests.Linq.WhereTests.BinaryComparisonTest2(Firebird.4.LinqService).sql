BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
		WHERE
			"t1"."MiddleName" = "t1"."LastName"
	)
FROM rdb$database

