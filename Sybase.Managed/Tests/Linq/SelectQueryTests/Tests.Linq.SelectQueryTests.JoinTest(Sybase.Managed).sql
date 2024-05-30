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

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[Value],
	1,
	3
FROM
	[SampleClass] [t]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

