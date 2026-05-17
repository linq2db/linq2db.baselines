-- SqlServer.2014.MS SqlServer.2014

SELECT
	[u].[PersonID],
	[x].[PersonID]
FROM
	[Person] [u]
		CROSS APPLY (
			SELECT
				[l].[PersonID]
			FROM
				(
					SELECT
						1 as [c1]
				) [r]
					LEFT JOIN [Patient] [l] ON [l].[PersonID] = [u].[PersonID]
		) [x]

