-- SqlServer.2017.MS SqlServer.2017
-- Command 1
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

-- Command 2
SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]
