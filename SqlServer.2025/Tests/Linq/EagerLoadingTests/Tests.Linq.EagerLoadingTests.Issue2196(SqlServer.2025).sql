BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022
DECLARE @eventId Int -- Int32
SET     @eventId = 1

SELECT
	[p].[Id]
FROM
	[EventScheduleItem] [p]
WHERE
	[p].[EventId] = @eventId AND [p].[IsActive] = 1

