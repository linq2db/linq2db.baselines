﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4280]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4280]', N'U') IS NULL)
	CREATE TABLE [Issue4280]
	(
		[Id]           Int            NOT NULL,
		[SerialNumber] NVarChar(4000)     NULL,
		[DeviceType]   NVarChar(4000)     NULL,
		[Location]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue4280] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'TV00001'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'TV'
DECLARE @Location NVarChar(4000) -- String
SET     @Location = N'Something'

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
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'Disp00001'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'DISPLAY'

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
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[DeviceType],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'TV00002'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'TV'
DECLARE @Location NVarChar(4000) -- String
SET     @Location = N'Anything'
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[t1]
SET
	[t1].[SerialNumber] = @SerialNumber,
	[t1].[DeviceType] = @DeviceType,
	[t1].[Location] = @Location
FROM
	[Issue4280] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'Disp00002'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'DISPLAY'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[t1]
SET
	[t1].[SerialNumber] = @SerialNumber,
	[t1].[DeviceType] = @DeviceType
FROM
	[Issue4280] [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[DeviceType],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4280]

