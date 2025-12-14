-- SqlServer.2022.MS SqlServer.2022

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [x]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Tag].[Name]
					FROM
						[Tag] [a_Tag]
					WHERE
						CAST([x].[TagId] AS BigInt) = [a_Tag].[Id]
				) [t1]
		WHERE
			[i].[Id] = [x].[TaggableId] AND [t1].[Name] = N'Visu'
	)

