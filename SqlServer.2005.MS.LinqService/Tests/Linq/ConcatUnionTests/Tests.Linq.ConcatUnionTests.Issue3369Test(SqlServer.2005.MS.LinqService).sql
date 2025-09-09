BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[t1].[ID],
	[t1].[OK],
	CASE
		WHEN [t1].[FirstName] = N'ddd' THEN [y].[FirstName]
		ELSE [t1].[FirstName]
	END
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CAST(N'A' AS NVarChar(4000)) as [FirstName],
			CASE
				WHEN [x].[FirstName] = N'123' THEN N'Y'
				ELSE N'N'
			END as [OK]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName],
			CAST(N'N' AS NVarChar(4000)) as [OK]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

