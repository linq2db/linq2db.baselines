BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_]
			WHERE
				CASE
					WHEN [_].[MiddleName] = N'123'
						THEN 1
					ELSE 0
				END = CASE
					WHEN CASE
						WHEN [_].[MiddleName] = N'1'
							THEN N'test'
						ELSE [_].[MiddleName]
					END = N'test'
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

