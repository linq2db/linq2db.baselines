BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItem]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NULL)
	CREATE TABLE [EventScheduleItem]
	(
		[Id]                        Int NOT NULL,
		[EventId]                   Int NOT NULL,
		[IsActive]                  Bit NOT NULL,
		[ParentEventScheduleItemId] Int     NULL,

		CONSTRAINT [PK_EventScheduleItem] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [EventScheduleItem]
(
	[Id],
	[EventId],
	[IsActive],
	[ParentEventScheduleItemId]
)
VALUES
(1,1,1,1),
(2,2,1,2)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItemPerson]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NULL)
	CREATE TABLE [EventScheduleItemPerson]
	(
		[Id]                    Int NOT NULL,
		[EventSchedulePersonId] Int NOT NULL,
		[EventScheduleItemId]   Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [EventScheduleItemPerson]
(
	[Id],
	[EventSchedulePersonId],
	[EventScheduleItemId]
)
VALUES
(1,1,1),
(2,2,2)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NOT NULL)
	DROP TABLE [EventSchedulePerson]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NULL)
	CREATE TABLE [EventSchedulePerson]
	(
		[Id]             Int NOT NULL,
		[TicketNumberId] Int     NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [EventSchedulePerson]
(
	[Id],
	[TicketNumberId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @eventId Int -- Int32
SET     @eventId = 1

SELECT
	[m_1].[Id],
	[d].[EventSchedulePersonId],
	[d].[Id],
	[a_Person].[TicketNumberId]
FROM
	[EventScheduleItem] [m_1]
		INNER JOIN [EventScheduleItemPerson] [d] ON [m_1].[Id] = [d].[EventScheduleItemId]
		LEFT JOIN [EventSchedulePerson] [a_Person] ON [d].[EventSchedulePersonId] = [a_Person].[Id]
WHERE
	[m_1].[EventId] = @eventId AND [m_1].[IsActive] = 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @eventId Int -- Int32
SET     @eventId = 1

SELECT
	[p].[Id]
FROM
	[EventScheduleItem] [p]
WHERE
	[p].[EventId] = @eventId AND [p].[IsActive] = 1

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventSchedulePerson]', N'U') IS NOT NULL)
	DROP TABLE [EventSchedulePerson]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItemPerson]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItemPerson]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[EventScheduleItem]', N'U') IS NOT NULL)
	DROP TABLE [EventScheduleItem]

