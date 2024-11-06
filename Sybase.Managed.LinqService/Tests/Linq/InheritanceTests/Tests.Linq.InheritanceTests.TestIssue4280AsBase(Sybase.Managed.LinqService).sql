BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4280') IS NOT NULL)
	DROP TABLE [Issue4280]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4280') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4280]
		(
			[Id]           Int           NOT NULL,
			[SerialNumber] NVarChar(255)     NULL,
			[DeviceType]   NVarChar(255)     NULL,
			[Location]     NVarChar(255)     NULL,

			CONSTRAINT [PK_Issue4280] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber UniVarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType UniVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location UniVarChar(9) -- String
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber UniVarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType UniVarChar(7) -- String
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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase
DECLARE @SerialNumber UniVarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType UniVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location UniVarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @SerialNumber UniVarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType UniVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[Issue4280]
SET
	[SerialNumber] = @SerialNumber,
	[DeviceType] = @DeviceType
WHERE
	[Issue4280].[Id] = @Id

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4280') IS NOT NULL)
	DROP TABLE [Issue4280]

