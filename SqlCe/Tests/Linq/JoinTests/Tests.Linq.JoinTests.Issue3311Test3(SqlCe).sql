-- SqlCe

SELECT
	[u].[PersonID] as [ID],
	[x].[PersonID] as [x]
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

