-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $SerialNumber NVarChar(7) -- String
SET     $SerialNumber = 'TV00001'
DECLARE $DeviceType NVarChar(2) -- String
SET     $DeviceType = 'TV'
DECLARE $Location NVarChar(9) -- String
SET     $Location = 'Something'

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType,
	Location
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($SerialNumber AS VARCHAR),
	CAST($DeviceType AS VARCHAR),
	CAST($Location AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $SerialNumber NVarChar(9) -- String
SET     $SerialNumber = 'Disp00001'
DECLARE $DeviceType NVarChar(7) -- String
SET     $DeviceType = 'DISPLAY'

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($SerialNumber AS VARCHAR),
	CAST($DeviceType AS VARCHAR)
)

-- DuckDB

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

-- DuckDB
DECLARE $SerialNumber NVarChar(7) -- String
SET     $SerialNumber = 'TV00002'
DECLARE $DeviceType NVarChar(2) -- String
SET     $DeviceType = 'TV'
DECLARE $Location NVarChar(8) -- String
SET     $Location = 'Anything'
DECLARE $Id  -- Int32
SET     $Id = 2

UPDATE
	Issue4280
SET
	SerialNumber = CAST($SerialNumber AS VARCHAR),
	DeviceType = CAST($DeviceType AS VARCHAR),
	Location = CAST($Location AS VARCHAR)
WHERE
	Issue4280.Id = CAST($Id AS INTEGER)

-- DuckDB
DECLARE $SerialNumber NVarChar(9) -- String
SET     $SerialNumber = 'Disp00002'
DECLARE $DeviceType NVarChar(7) -- String
SET     $DeviceType = 'DISPLAY'
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	Issue4280
SET
	SerialNumber = CAST($SerialNumber AS VARCHAR),
	DeviceType = CAST($DeviceType AS VARCHAR)
WHERE
	Issue4280.Id = CAST($Id AS INTEGER)

-- DuckDB

SELECT
	t1.DeviceType,
	t1.Id,
	t1.SerialNumber,
	t1.Location
FROM
	Issue4280 t1
ORDER BY
	t1.Id

