BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NULL)
	EXECUTE('
		CREATE TABLE [SampleClass]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
SET     @Value = 100

INSERT INTO [SampleClass]
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
	DateAdd(day, [t].[Value], GetDate()),
	DateAdd(day, 2, GetDate())
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	DateAdd(day, 3, GetDate()),
	DateAdd(day, 4, GetDate())

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

