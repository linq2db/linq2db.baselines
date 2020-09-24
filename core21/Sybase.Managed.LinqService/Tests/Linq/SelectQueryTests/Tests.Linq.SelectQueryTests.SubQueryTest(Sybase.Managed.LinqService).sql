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

SELECT TOP 1
	[t2].[Value1],
	[t2].[Value2]
FROM
	(
		SELECT
			DateAdd(day, [t].[Value], GetDate()) as [Value1],
			DateAdd(day, 2, GetDate()) as [Value2]
		FROM
			[SampleClass] [t]
		WHERE
			[t].[Value] = 1
		UNION
		SELECT
			[t1].[Value1],
			[t1].[Value2]
		FROM
			(
				SELECT
					DateAdd(day, 3, GetDate()) as [Value1],
					DateAdd(day, 4, GetDate()) as [Value2]
			) [t1]
	) [t2]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [SampleClass]

