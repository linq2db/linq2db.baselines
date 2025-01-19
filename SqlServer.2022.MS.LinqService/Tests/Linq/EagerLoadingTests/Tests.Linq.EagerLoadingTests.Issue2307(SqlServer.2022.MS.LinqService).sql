BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

