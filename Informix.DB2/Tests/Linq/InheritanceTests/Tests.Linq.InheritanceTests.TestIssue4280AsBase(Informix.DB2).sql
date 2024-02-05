﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4280

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4280
(
	Id           Int           NOT NULL,
	SerialNumber NVarChar(255)     NULL,
	DeviceType   NVarChar(255)     NULL,
	Location     NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType,
	Location
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO Issue4280
(
	Id,
	SerialNumber,
	DeviceType
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- Informix.DB2 Informix

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
-- Informix.DB2 Informix
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	Issue4280
SET
	Issue4280.SerialNumber = @SerialNumber,
	Issue4280.DeviceType = @DeviceType,
	Issue4280.Location = @Location
WHERE
	Issue4280.Id = @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	Issue4280
SET
	Issue4280.SerialNumber = @SerialNumber,
	Issue4280.DeviceType = @DeviceType
WHERE
	Issue4280.Id = @Id

BeforeExecute
-- Informix.DB2 Informix

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
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4280

