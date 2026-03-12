-- SqlServer.2005

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
		WHERE
			[i].[Id] = [x].[TaggableId] AND (
				SELECT TOP (1)
					[a_Tag].[Name]
				FROM
					[Tag] [a_Tag]
				WHERE
					CAST([x].[TagId] AS BigInt) = [a_Tag].[Id]
			) = N'Visu'
	)

