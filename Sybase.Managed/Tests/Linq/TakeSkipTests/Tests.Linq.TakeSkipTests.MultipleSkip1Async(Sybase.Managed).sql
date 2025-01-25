BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NULL)
	EXECUTE('
		CREATE TABLE [TakeSkipClass]
		(
			[Value] VarChar(10)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TakeSkipClass]
(
	[Value]
)
SELECT 'PLUTO' UNION ALL
SELECT 'PIPPO' UNION ALL
SELECT 'PLUTO' UNION ALL
SELECT 'BOLTO'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TakeSkipClass') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

