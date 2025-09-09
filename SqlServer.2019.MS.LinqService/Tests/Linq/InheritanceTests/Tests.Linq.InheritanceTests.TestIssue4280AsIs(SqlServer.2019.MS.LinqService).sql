﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[DeviceType],
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'TV00002'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'TV'
DECLARE @Location NVarChar(4000) -- String
SET     @Location = N'Anything'
DECLARE @Id Int -- Int32
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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @SerialNumber NVarChar(4000) -- String
SET     @SerialNumber = N'Disp00002'
DECLARE @DeviceType NVarChar(4000) -- String
SET     @DeviceType = N'DISPLAY'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[Issue4280]
SET
	[SerialNumber] = @SerialNumber,
	[DeviceType] = @DeviceType
WHERE
	[Issue4280].[Id] = @Id

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[DeviceType],
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

