BeforeExecute
-- SqlServer.2005

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [TakeSkipClass]
(
	[Value]
)
SELECT 'PIPPO' UNION ALL
SELECT 'PLUTO' UNION ALL
SELECT 'PLUTO' UNION ALL
SELECT 'BOLTO'

BeforeExecute
-- SqlServer.2005

SELECT
	CASE WHEN EXISTS(
		SELECT TOP (1)
			*
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2005

DROP TABLE [TakeSkipClass]

