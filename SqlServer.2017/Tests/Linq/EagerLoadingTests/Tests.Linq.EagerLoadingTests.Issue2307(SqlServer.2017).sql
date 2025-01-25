BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AttendanceSheet]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[AttendanceSheet]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheet]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AttendanceSheet] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [AttendanceSheet]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[AttendanceSheetRow]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheetRow]
	(
		[Id]                Int NOT NULL,
		[AttendanceSheetId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [AttendanceSheetRow]
(
	[Id],
	[AttendanceSheetId]
)
VALUES
(1,1),
(2,2),
(3,1),
(4,2)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AttendanceSheet]

