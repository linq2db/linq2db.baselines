﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

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
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

