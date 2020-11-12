BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

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
	1
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [SampleClass]

