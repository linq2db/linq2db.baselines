BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				"t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

