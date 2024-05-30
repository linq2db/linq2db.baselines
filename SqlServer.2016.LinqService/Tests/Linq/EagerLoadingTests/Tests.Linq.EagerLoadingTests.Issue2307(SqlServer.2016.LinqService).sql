BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [AttendanceSheet]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[AttendanceSheet]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheet]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AttendanceSheet] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [AttendanceSheet]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [AttendanceSheet]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[AttendanceSheetRow]', N'U') IS NULL)
	CREATE TABLE [AttendanceSheetRow]
	(
		[Id]                Int NOT NULL,
		[AttendanceSheetId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @AttendanceSheetId Int -- Int32
SET     @AttendanceSheetId = 1

INSERT INTO [AttendanceSheetRow]
(
	[Id],
	[AttendanceSheetId]
)
VALUES
(
	@Id,
	@AttendanceSheetId
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @AttendanceSheetId Int -- Int32
SET     @AttendanceSheetId = 2

INSERT INTO [AttendanceSheetRow]
(
	[Id],
	[AttendanceSheetId]
)
VALUES
(
	@Id,
	@AttendanceSheetId
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @AttendanceSheetId Int -- Int32
SET     @AttendanceSheetId = 1

INSERT INTO [AttendanceSheetRow]
(
	[Id],
	[AttendanceSheetId]
)
VALUES
(
	@Id,
	@AttendanceSheetId
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @AttendanceSheetId Int -- Int32
SET     @AttendanceSheetId = 2

INSERT INTO [AttendanceSheetRow]
(
	[Id],
	[AttendanceSheetId]
)
VALUES
(
	@Id,
	@AttendanceSheetId
)

BeforeExecute
-- SqlServer.2016

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[AttendanceSheetId]
FROM
	[AttendanceSheet] [m_1]
		INNER JOIN [AttendanceSheetRow] [d] ON [m_1].[Id] = [d].[AttendanceSheetId]

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id]
FROM
	[AttendanceSheet] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [AttendanceSheet]

