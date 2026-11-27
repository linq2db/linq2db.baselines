-- SqlServer.2019.MS SqlServer.2019
SELECT
	[i].[Id]
FROM
	[TaggableIssue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TaggingBase] [x]
		WHERE
			[i].[Id] = [x].[TaggableId] AND (
				SELECT TOP (1)
					[a_Tag].[Name]
				FROM
					[TaggingTag] [a_Tag]
				WHERE
					CAST([x].[TagId] AS BigInt) = [a_Tag].[Id]
			) = N'Visu'
	)

