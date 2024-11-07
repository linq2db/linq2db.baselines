BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT IIF(EXISTS(SELECT * FROM [INFORMATION_SCHEMA].[TABLES] [x] WHERE [x].[TABLE_NAME] = N'Person'),1,0) ttt
			) [t1]
	)

