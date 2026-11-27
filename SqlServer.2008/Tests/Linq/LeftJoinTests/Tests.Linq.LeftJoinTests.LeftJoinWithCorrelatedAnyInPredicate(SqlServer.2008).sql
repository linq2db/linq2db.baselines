-- SqlServer.2008
SELECT
	[rTable1].[Id_1],
	[rTable1].[Description],
	[rTable2].[Id_2],
	[rTable2].[Description]
FROM
	[LeftJoinAnyOuter] [rTable1]
		LEFT JOIN [LeftJoinAnyInner] [rTable2] ON [rTable2].[Id_2] = [rTable1].[Id_1] AND EXISTS(
			SELECT
				*
			FROM
				[LeftJoinAnyFilter] [r3]
			WHERE
				[r3].[Id_3] = [rTable1].[Id_1]
		)

