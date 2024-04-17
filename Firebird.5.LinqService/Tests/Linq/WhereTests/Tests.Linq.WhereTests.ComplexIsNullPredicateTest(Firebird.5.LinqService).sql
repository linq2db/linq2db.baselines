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
					WHEN "t1"."MiddleName" = '123'
						THEN TRUE
					ELSE FALSE
				END = CASE
					WHEN CASE
						WHEN "t1"."MiddleName" = '1'
							THEN 'test'
						ELSE "t1"."MiddleName"
					END = 'test'
						THEN TRUE
					ELSE FALSE
				END
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

