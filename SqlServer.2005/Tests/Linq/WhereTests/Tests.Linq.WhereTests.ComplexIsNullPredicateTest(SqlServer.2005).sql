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
					WHEN [_].[MiddleName] = N'123' THEN 1
					ELSE 0
				END = CASE
					WHEN ([_].[MiddleName] = N'1' OR [_].[MiddleName] = N'test' AND ([_].[MiddleName] <> N'1' OR [_].[MiddleName] IS NULL))
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

