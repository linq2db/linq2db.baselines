BeforeExecute
-- Firebird.5 Firebird4

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

