BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[rTable1].[Id_1],
	[rTable1].[Description],
	[rTable2].[Id_2],
	[rTable2].[Description]
FROM
	[Table1] [rTable1]
		LEFT JOIN [Table2] [rTable2] ON [rTable2].[Id_2] = [rTable1].[Id_1] AND EXISTS(
			SELECT
				*
			FROM
				[Table3] [r3]
			WHERE
				[r3].[Id_3] = [rTable1].[Id_1]
		)

