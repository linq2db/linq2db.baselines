﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttendanceSheet

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS AttendanceSheet
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AttendanceSheet
(
	Id
)
VALUES
(toInt32(1)),
(toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttendanceSheetRow

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS AttendanceSheetRow
(
	Id                Int32,
	AttendanceSheetId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AttendanceSheetRow
(
	Id,
	AttendanceSheetId
)
VALUES
(toInt32(1),toInt32(1)),
(toInt32(2),toInt32(2)),
(toInt32(3),toInt32(1)),
(toInt32(4),toInt32(2))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sheet.Id,
	detail.Id,
	detail.AttendanceSheetId
FROM
	AttendanceSheet sheet
		INNER JOIN AttendanceSheetRow detail ON detail.AttendanceSheetId = sheet.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	sheet.Id
FROM
	AttendanceSheet sheet

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttendanceSheetRow

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS AttendanceSheet

