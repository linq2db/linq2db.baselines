﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4280]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4280]
(
	[Id]           INTEGER       NOT NULL,
	[SerialNumber] NVarChar(255)     NULL,
	[DeviceType]   NVarChar(255)     NULL,
	[Location]     NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue4280] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO [Issue4280]
(
	[Id],
	[SerialNumber],
	[DeviceType],
	[Location]
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO [Issue4280]
(
	[Id],
	[SerialNumber],
	[DeviceType]
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t1].[DeviceType] = 'TV' THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[DeviceType],
	[t1].[Location],
	CASE
		WHEN [t1].[DeviceType] = 'DISPLAY' THEN 1
		ELSE 0
	END
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[Issue4280]
SET
	[SerialNumber] = @SerialNumber,
	[DeviceType] = @DeviceType,
	[Location] = @Location
WHERE
	[Issue4280].[Id] = @Id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[Issue4280]
SET
	[SerialNumber] = @SerialNumber,
	[DeviceType] = @DeviceType
WHERE
	[Issue4280].[Id] = @Id

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [t1].[DeviceType] = 'TV' THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[DeviceType],
	[t1].[Location],
	CASE
		WHEN [t1].[DeviceType] = 'DISPLAY' THEN 1
		ELSE 0
	END
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4280]

