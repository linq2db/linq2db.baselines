﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4280

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType,
	Location
)
VALUES
(
	toInt32(2),
	'TV00001',
	'TV',
	'Something'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType
)
VALUES
(
	toInt32(1),
	'Disp00001',
	'DISPLAY'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.SerialNumber,
	t1.DeviceType,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'Disp00002',
	DeviceType = 'DISPLAY'
WHERE
	Id = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.SerialNumber,
	t1.DeviceType,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue4280

