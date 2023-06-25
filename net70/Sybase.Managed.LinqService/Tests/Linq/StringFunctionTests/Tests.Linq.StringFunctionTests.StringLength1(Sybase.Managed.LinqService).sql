BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [IsNullOrEmptyTable]
		(
			[Id]    Int           NOT NULL,
			[Value] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value UniVarChar(3) -- String
SET     @Value = '   '

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value UniVarChar -- String
SET     @Value = ''

INSERT INTO [IsNullOrEmptyTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[IsNullOrEmptyTable] [p]
WHERE
	Len([p].[Value]) = 0

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IsNullOrEmptyTable') IS NOT NULL)
	DROP TABLE [IsNullOrEmptyTable]

