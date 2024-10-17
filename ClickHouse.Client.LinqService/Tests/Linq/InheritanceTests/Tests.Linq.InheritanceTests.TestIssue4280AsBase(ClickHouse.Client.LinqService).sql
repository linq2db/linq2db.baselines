BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4280

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.DeviceType = 'TV' THEN true
		ELSE false
	END,
	t1.Id,
	t1.SerialNumber,
	t1.DeviceType,
	t1.Location,
	CASE
		WHEN t1.DeviceType = 'DISPLAY' THEN true
		ELSE false
	END
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'Disp00002',
	DeviceType = 'DISPLAY'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.DeviceType = 'TV' THEN true
		ELSE false
	END,
	t1.Id,
	t1.SerialNumber,
	t1.DeviceType,
	t1.Location,
	CASE
		WHEN t1.DeviceType = 'DISPLAY' THEN true
		ELSE false
	END
FROM
	Issue4280 t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4280

