BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @dateMin Date -- DateTime
SET     @dateMin = #2020-02-29 17:54:55#
DECLARE @dateMax Date -- DateTime
SET     @dateMax = #2020-02-29 17:54:55#
DECLARE @sectorId Integer -- Int32
SET     @sectorId = 1

SELECT
	[m_1].[MonthNumber],
	[q].[Key_1],
	[q].[Ftq]
FROM
	[tblMonth] [m_1]
		LEFT JOIN (
			SELECT
				[g_3].[Key_1],
				SUM([g_3].[Ftq]) as [Ftq]
			FROM
				(
					SELECT
						[g_2].[Month_1] as [Key_1],
						SUM([g_2].[Qty]) / SUM(IIF([g_2].[Ok], 0, [g_2].[Qty])) as [Ftq]
					FROM
						(
							SELECT
								DatePart('m', [g_1].[EntryDate]) as [Month_1],
								[a_Workstation].[Id_WorkstationGroup],
								[g_1].[Qty],
								[a_Defect].[Ok]
							FROM
								(([tblFtq] [g_1]
									INNER JOIN [tblDefect] [a_Defect] ON ([g_1].[Id_Defect] = [a_Defect].[Id]))
									INNER JOIN [tblWorkstation] [a_Workstation] ON ([a_Defect].[Id_Workstation] = [a_Workstation].[Id]))
									INNER JOIN [tblWorkstationGroup] [a_WorkstationGroup] ON ([a_Workstation].[Id_WorkstationGroup] = [a_WorkstationGroup].[Id])
							WHERE
								[g_1].[EntryDate] >= @dateMin AND [g_1].[EntryDate] <= @dateMax AND
								[a_WorkstationGroup].[Id_Sector] = @sectorId
						) [g_2]
					GROUP BY
						[g_2].[Month_1],
						[g_2].[Id_WorkstationGroup]
				) [g_3]
			GROUP BY
				[g_3].[Key_1]
		) [q] ON ([q].[Key_1] = [m_1].[MonthNumber])

