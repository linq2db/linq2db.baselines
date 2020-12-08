BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [AttendanceSheet]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttendanceSheet] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [AttendanceSheet]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [AttendanceSheetRow]
(
	[Id]                Int NOT NULL,
	[AttendanceSheetId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[sheet].[Id],
	[detail].[Id],
	[detail].[AttendanceSheetId]
FROM
	[AttendanceSheet] [sheet]
		INNER JOIN [AttendanceSheetRow] [detail] ON [detail].[AttendanceSheetId] = [sheet].[Id]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[sheet].[Id]
FROM
	[AttendanceSheet] [sheet]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [AttendanceSheet]

