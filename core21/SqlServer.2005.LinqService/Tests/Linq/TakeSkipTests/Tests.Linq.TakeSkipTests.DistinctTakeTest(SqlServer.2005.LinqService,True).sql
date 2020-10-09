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
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take) 
	[t2].[Value_1]
FROM
	( 
		SELECT DISTINCT 
			[t1].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2005

DROP TABLE [TakeSkipClass]

