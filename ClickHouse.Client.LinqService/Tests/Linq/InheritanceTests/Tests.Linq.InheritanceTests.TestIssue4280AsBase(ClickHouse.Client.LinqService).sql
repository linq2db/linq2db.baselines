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
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
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
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

