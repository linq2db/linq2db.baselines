﻿BeforeExecute
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

SELECT
	DateAdd(day, [t].[Value], GetDate()),
	DateAdd(day, 2, GetDate())
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[v].[Value2]
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
	) [v]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SampleClass') IS NOT NULL)
	DROP TABLE [SampleClass]

