-- SqlServer.SA.MS SqlServer.2019

SELECT
	[n].[Name]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(N'Janet'), (N'Doe')
		) [n]([Name]) ON [p].[LastName] = [n].[Name]

