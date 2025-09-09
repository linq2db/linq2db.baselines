BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

