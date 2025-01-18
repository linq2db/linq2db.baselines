BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

