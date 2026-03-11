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
	2,
	'TV00001',
	'TV',
	'Something'
)

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = 2

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Issue4280
UPDATE
	SerialNumber = 'Disp00002',
	DeviceType = 'DISPLAY'
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

