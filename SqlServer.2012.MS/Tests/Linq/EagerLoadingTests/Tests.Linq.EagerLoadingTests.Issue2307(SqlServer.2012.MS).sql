-- SqlServer.2012.MS SqlServer.2012
-- Batch 1
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

-- Batch 2
SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]
