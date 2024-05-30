BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttendanceSheet

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AttendanceSheet
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AttendanceSheet
(
	Id
)
VALUES
(1),
(2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttendanceSheetRow

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS AttendanceSheetRow
(
	Id                Int32,
	AttendanceSheetId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AttendanceSheetRow
(
	Id,
	AttendanceSheetId
)
VALUES
(1,1),
(2,2),
(3,1),
(4,2)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.AttendanceSheetId
FROM
	AttendanceSheet m_1
		INNER JOIN AttendanceSheetRow d ON m_1.Id = d.AttendanceSheetId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	AttendanceSheet t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttendanceSheetRow

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS AttendanceSheet

