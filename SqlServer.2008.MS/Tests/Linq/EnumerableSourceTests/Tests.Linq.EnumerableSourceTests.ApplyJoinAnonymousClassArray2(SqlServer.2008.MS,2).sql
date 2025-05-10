BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[n].[Name]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([Name]) ON [p].[LastName] = [n].[Name]

