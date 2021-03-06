﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [EventScheduleItem]
(
	[ParentEventScheduleItemId] Int     NULL,
	[IsActive]                  Bit NOT NULL,
	[EventId]                   Int NOT NULL,
	[Id]                        Int NOT NULL,

	CONSTRAINT [PK_EventScheduleItem] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [EventScheduleItem]
(
	[ParentEventScheduleItemId],
	[IsActive],
	[EventId],
	[Id]
)
VALUES
(1,1,1,1),
(2,1,2,2)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [EventScheduleItemPerson]
(
	[Id]                    Int NOT NULL,
	[EventSchedulePersonId] Int NOT NULL,
	[EventScheduleItemId]   Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [EventSchedulePerson]
(
	[Id]             Int NOT NULL,
	[TicketNumberId] Int     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [EventSchedulePerson]
(
	[Id],
	[TicketNumberId]
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @EventId Int -- Int32
SET     @EventId = 1

SELECT
	[p].[Id],
	[detail].[EventSchedulePersonId],
	[detail].[Id],
	[a_Person].[TicketNumberId]
FROM
	[EventScheduleItem] [p]
		INNER JOIN [EventScheduleItemPerson] [detail] ON [p].[Id] = [detail].[EventScheduleItemId]
		LEFT JOIN [EventSchedulePerson] [a_Person] ON [detail].[EventSchedulePersonId] = [a_Person].[Id]
WHERE
	[p].[EventId] = @EventId AND [p].[IsActive] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @eventId Int -- Int32
SET     @eventId = 1

SELECT
	[p].[Id]
FROM
	[EventScheduleItem] [p]
WHERE
	[p].[EventId] = @eventId AND [p].[IsActive] = 1

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [EventSchedulePerson]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [EventScheduleItemPerson]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [EventScheduleItem]

