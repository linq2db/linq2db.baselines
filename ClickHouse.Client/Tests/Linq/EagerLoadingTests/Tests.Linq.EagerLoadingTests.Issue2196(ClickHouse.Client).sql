BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	d.EventSchedulePersonId,
	d.Id,
	a_Person.TicketNumberId
FROM
	EventScheduleItem m_1
		INNER JOIN EventScheduleItemPerson d ON m_1.Id = d.EventScheduleItemId
		LEFT JOIN EventSchedulePerson a_Person ON d.EventSchedulePersonId = a_Person.Id
WHERE
	m_1.EventId = 1 AND m_1.IsActive

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Id
FROM
	EventScheduleItem p
WHERE
	p.EventId = 1 AND p.IsActive

