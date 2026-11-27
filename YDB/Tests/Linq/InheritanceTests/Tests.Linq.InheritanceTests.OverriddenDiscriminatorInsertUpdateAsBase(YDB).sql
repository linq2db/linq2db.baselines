-- YDB Ydb
DECLARE Id Int32
SET     Id = 2
DECLARE SerialNumber Text(7) -- String
SET     SerialNumber = 'TV00001'u
DECLARE DeviceType Text(2) -- String
SET     DeviceType = 'TV'u
DECLARE Location Text(9) -- String
SET     Location = 'Something'u

INSERT INTO DeviceInheritance
(
	Id,
	SerialNumber,
	DeviceType,
	Location
)
VALUES
(
	$Id,
	$SerialNumber,
	$DeviceType,
	$Location
)

-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE SerialNumber Text(9) -- String
SET     SerialNumber = 'Disp00001'u
DECLARE DeviceType Text(7) -- String
SET     DeviceType = 'DISPLAY'u

INSERT INTO DeviceInheritance
(
	Id,
	SerialNumber,
	DeviceType
)
VALUES
(
	$Id,
	$SerialNumber,
	$DeviceType
)

-- YDB Ydb
SELECT
	t1.DeviceType as DeviceType,
	t1.Id as Id,
	t1.SerialNumber as SerialNumber,
	t1.Location as Location
FROM
	DeviceInheritance t1
ORDER BY
	t1.Id

-- YDB Ydb
DECLARE SerialNumber Text(7) -- String
SET     SerialNumber = 'TV00002'u
DECLARE DeviceType Text(2) -- String
SET     DeviceType = 'TV'u
DECLARE Location Text(8) -- String
SET     Location = 'Anything'u
DECLARE Id Int32
SET     Id = 2

UPDATE
	DeviceInheritance
SET
	SerialNumber = $SerialNumber,
	DeviceType = $DeviceType,
	Location = $Location
WHERE
	DeviceInheritance.Id = $Id

-- YDB Ydb
DECLARE SerialNumber Text(9) -- String
SET     SerialNumber = 'Disp00002'u
DECLARE DeviceType Text(7) -- String
SET     DeviceType = 'DISPLAY'u
DECLARE Id Int32
SET     Id = 1

UPDATE
	DeviceInheritance
SET
	SerialNumber = $SerialNumber,
	DeviceType = $DeviceType
WHERE
	DeviceInheritance.Id = $Id

-- YDB Ydb
SELECT
	t1.DeviceType as DeviceType,
	t1.Id as Id,
	t1.SerialNumber as SerialNumber,
	t1.Location as Location
FROM
	DeviceInheritance t1
ORDER BY
	t1.Id

