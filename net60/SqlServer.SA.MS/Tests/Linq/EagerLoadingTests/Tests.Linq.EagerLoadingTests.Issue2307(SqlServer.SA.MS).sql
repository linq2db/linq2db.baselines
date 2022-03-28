﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AttendanceSheet]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[AttendanceSheet]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheet]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AttendanceSheet] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [AttendanceSheet]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[AttendanceSheetRow]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheetRow]
	(
		[Id]                Int NOT NULL,
		[AttendanceSheetId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[sheet].[Id],
	[detail].[Id],
	[detail].[AttendanceSheetId]
FROM
	[AttendanceSheet] [sheet]
		INNER JOIN [AttendanceSheetRow] [detail] ON [detail].[AttendanceSheetId] = [sheet].[Id]

BeforeExecute
RollbackTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[sheet].[Id]
FROM
	[AttendanceSheet] [sheet]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AttendanceSheet]

