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
SELECT 'PLUTO' UNION ALL
SELECT 'PIPPO' UNION ALL
SELECT 'PLUTO' UNION ALL
SELECT 'BOLTO'

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT 
	[t2].[Value_1]
FROM
	( 
		SELECT 
			[t1].[Value] as [Value_1], 
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 4

SELECT 
	[t2].[Value_1]
FROM
	( 
		SELECT 
			[t1].[Value] as [Value_1], 
			ROW_NUMBER() OVER (ORDER BY [t1].[Value]) as [RN]
		FROM
			[TakeSkipClass] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip

BeforeExecute
-- SqlServer.2005

DROP TABLE [TakeSkipClass]

