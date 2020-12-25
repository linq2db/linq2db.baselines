BeforeExecute
-- Firebird3 Firebird

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
						THEN 1
					ELSE 0
				END = CASE
					WHEN CASE
						WHEN "t1"."MiddleName" = '1'
							THEN 'test'
						ELSE "t1"."MiddleName"
					END = 'test'
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

