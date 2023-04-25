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
(toInt32(1),toInt32(1),true,toInt32(1)),
(toInt32(2),toInt32(2),true,toInt32(2))

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
(toInt32(1),toInt32(1),toInt32(1)),
(toInt32(2),toInt32(2),toInt32(2))

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
(toInt32(1),toInt32(1)),
(toInt32(2),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id,
	detail.EventSchedulePersonId,
	detail.Id,
	a_Person.TicketNumberId
FROM
	EventScheduleItem p
		INNER JOIN EventScheduleItemPerson detail ON p.Id = detail.EventScheduleItemId
		LEFT JOIN EventSchedulePerson a_Person ON detail.EventSchedulePersonId = a_Person.Id
WHERE
	p.EventId = toInt32(1) AND p.IsActive = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.Id
FROM
	EventScheduleItem p
WHERE
	p.EventId = toInt32(1) AND p.IsActive = true

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventSchedulePerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItemPerson

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EventScheduleItem

