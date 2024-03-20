BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [_]
			WHERE
				(CASE
					WHEN [_].[MiddleName] = N'123' THEN 1
					ELSE 0
				END) = (CASE
					WHEN [_].[MiddleName] = N'1' THEN 1
					ELSE 0
				END)
		)
			THEN 1
		ELSE 0
	END

