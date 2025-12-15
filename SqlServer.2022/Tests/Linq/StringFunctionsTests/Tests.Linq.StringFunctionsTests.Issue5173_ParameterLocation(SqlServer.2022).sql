-- SqlServer.2022

SELECT
	STRING_AGG(N'test:' + CAST([grp_1].[ch] AS VarChar(11)), N';')
FROM
	(
		SELECT
			[ch].[item] % 10 as [Key_1],
			[ch].[item] as [ch]
		FROM
			[Parent] [grp]
				CROSS JOIN (VALUES
					(11), (13)
				) [ch]([item])
	) [grp_1]
GROUP BY
	[grp_1].[Key_1]

