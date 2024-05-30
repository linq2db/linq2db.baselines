BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItem

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EventScheduleItem
(
	Id                        Int32,
	EventId                   Int32,
	IsActive                  Bool,
	ParentEventScheduleItemId Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EventScheduleItem
(
	Id,
	EventId,
	IsActive,
	ParentEventScheduleItemId
)
VALUES
(1,1,true,1),
(2,2,true,2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItemPerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EventScheduleItemPerson
(
	Id                    Int32,
	EventSchedulePersonId Int32,
	EventScheduleItemId   Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EventScheduleItemPerson
(
	Id,
	EventSchedulePersonId,
	EventScheduleItemId
)
VALUES
(1,1,1),
(2,2,2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventSchedulePerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EventSchedulePerson
(
	Id             Int32,
	TicketNumberId Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EventSchedulePerson
(
	Id,
	TicketNumberId
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	m_1.EventId = 1 AND m_1.IsActive = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id
FROM
	EventScheduleItem p
WHERE
	p.EventId = 1 AND p.IsActive = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventSchedulePerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItemPerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItem

