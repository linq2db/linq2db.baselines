BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [t1]
			WHERE
				CASE
					WHEN [t1].[MiddleName] = N'123' THEN 1
					ELSE 0
				END = CASE
					WHEN [t1].[MiddleName] = N'1' THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END

