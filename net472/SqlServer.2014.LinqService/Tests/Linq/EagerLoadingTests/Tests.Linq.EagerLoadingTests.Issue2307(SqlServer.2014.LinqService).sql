BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [AttendanceSheet]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AttendanceSheet] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [AttendanceSheetRow]
(
	[Id]                Int NOT NULL,
	[AttendanceSheetId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

SELECT 
	[sheet].[Id], 
	[detail].[Id], 
	[detail].[AttendanceSheetId]
FROM
	[AttendanceSheet] [sheet]
		INNER JOIN [AttendanceSheetRow] [detail] ON [detail].[AttendanceSheetId] = [sheet].[Id]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[sheet].[Id]
FROM
	[AttendanceSheet] [sheet]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [AttendanceSheetRow]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [AttendanceSheet]

