BeforeExecute
-- SqlServer.2008

SELECT TOP (2)
	[t1].[City],
	[t1].[Street],
	[t1].[Building]
FROM
	(
		SELECT DISTINCT
			[u].[city] as [City],
			[u].[street] as [Street],
			[u].[building_number] as [Building]
		FROM
			[User] [u]
	) [t1]

