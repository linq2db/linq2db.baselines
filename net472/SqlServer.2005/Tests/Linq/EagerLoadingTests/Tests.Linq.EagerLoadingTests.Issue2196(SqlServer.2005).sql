BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItem]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NULL)
	CREATE TABLE [EventScheduleItem]
	(
		[ParentEventScheduleItemId] Int     NULL,
		[IsActive]                  Bit NOT NULL,
		[EventId]                   Int NOT NULL,
		[Id]                        Int NOT NULL,

		CONSTRAINT [PK_EventScheduleItem] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [EventScheduleItem]
(
	[ParentEventScheduleItemId],
	[IsActive],
	[EventId],
	[Id]
)
SELECT 1,1,1,1 UNION ALL
SELECT 2,1,2,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItemPerson]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NULL)
	CREATE TABLE [EventScheduleItemPerson]
	(
		[Id]                    Int NOT NULL,
		[EventSchedulePersonId] Int NOT NULL,
		[EventScheduleItemId]   Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [EventScheduleItemPerson]
(
	[Id],
	[EventSchedulePersonId],
	[EventScheduleItemId]
)
SELECT 1,1,1 UNION ALL
SELECT 2,2,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NOT NULL)
	DROP TABLE [EventSchedulePerson]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NULL)
	CREATE TABLE [EventSchedulePerson]
	(
		[Id]             Int NOT NULL,
		[TicketNumberId] Int     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [EventSchedulePerson]
(
	[Id],
	[TicketNumberId]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NOT NULL)
	DROP TABLE [EventSchedulePerson]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItemPerson]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItem]

