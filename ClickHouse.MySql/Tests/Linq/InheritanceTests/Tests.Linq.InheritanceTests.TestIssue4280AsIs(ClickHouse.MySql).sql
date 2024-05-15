﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4280

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue4280
(
	Id           Int32,
	SerialNumber Nullable(String),
	DeviceType   Nullable(String),
	Location     Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType,
	Location
)
VALUES
(
	2,
	'TV00001',
	'TV',
	'Something'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType
)
VALUES
(
	1,
	'Disp00001',
	'DISPLAY'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'Disp00002',
	DeviceType = 'DISPLAY'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue4280

