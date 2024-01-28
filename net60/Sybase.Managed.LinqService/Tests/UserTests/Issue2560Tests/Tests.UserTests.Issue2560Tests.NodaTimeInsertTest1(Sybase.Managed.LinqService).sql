BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DataClass') IS NOT NULL)
	DROP TABLE [DataClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DataClass') IS NULL)
	EXECUTE('
		CREATE TABLE [DataClass]
		(
			[Id]    Int      NOT NULL,
			[Value] DateTime NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = '2020-02-29 17:54:55.123'

INSERT INTO [DataClass]
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
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DataClass') IS NOT NULL)
	DROP TABLE [DataClass]

