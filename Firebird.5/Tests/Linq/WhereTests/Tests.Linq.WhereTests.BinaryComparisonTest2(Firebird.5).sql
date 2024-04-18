BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				CASE
					WHEN "t1"."FirstName" = "t1"."FirstName"
						THEN TRUE
					ELSE FALSE
				END <> CASE
					WHEN "t1"."MiddleName" <> "t1"."LastName"
						THEN TRUE
					ELSE FALSE
				END
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

