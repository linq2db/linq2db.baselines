-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	DeviceInheritance t1
ORDER BY
	t1.Id

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	DeviceInheritance
UPDATE
	SerialNumber = 'TV00002',
	DeviceType = 'TV',
	Location = 'Anything'
WHERE
	Id = 2

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	DeviceInheritance
UPDATE
	SerialNumber = 'Disp00002',
	DeviceType = 'DISPLAY'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	DeviceInheritance t1
ORDER BY
	t1.Id

