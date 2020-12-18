BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
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
DECLARE @take_2 Int -- Int32
SET     @take_2 = 2

SELECT TOP (@take_2)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

