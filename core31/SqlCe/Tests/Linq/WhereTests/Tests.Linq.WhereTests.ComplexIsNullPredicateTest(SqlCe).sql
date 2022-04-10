BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_]
			WHERE
				CASE
					WHEN [_].[MiddleName] = '123'
						THEN 1
					ELSE 0
				END = CASE
					WHEN CASE
						WHEN [_].[MiddleName] = '1'
							THEN 'test'
						ELSE [_].[MiddleName]
					END = 'test'
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

