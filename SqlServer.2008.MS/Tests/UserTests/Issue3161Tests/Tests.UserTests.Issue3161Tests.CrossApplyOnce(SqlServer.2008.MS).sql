-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1_1].[NAME1],
	[t1].[Id2],
	[t1].[Name2]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[x].[NAME2] as [Name2],
				[x].[ID2] as [Id2]
			FROM
				[TABLE2] [x]
			WHERE
				[x].[PARENTID2] = [t1_1].[ID1]
		) [t1]

