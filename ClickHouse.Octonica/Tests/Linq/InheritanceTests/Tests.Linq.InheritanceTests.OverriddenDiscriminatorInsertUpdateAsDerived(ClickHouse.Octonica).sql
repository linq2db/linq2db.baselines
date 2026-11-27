-- ClickHouse.Octonica ClickHouse
INSERT INTO DeviceInheritance
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
INSERT INTO DeviceInheritance
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
	DeviceInheritance t1
ORDER BY
	t1.Id

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	DeviceInheritance
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = 2

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	DeviceInheritance
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
	DeviceInheritance t1
ORDER BY
	t1.Id

