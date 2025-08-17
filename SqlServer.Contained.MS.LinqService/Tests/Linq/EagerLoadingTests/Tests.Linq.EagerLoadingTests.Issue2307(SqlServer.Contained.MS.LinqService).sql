BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

