BeforeExecute
-- Firebird.3 Firebird3

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
		WHERE
			NOT ("t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL)
	)
FROM rdb$database

