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
SELECT 'Value1' UNION ALL
SELECT 'Value2' UNION ALL
SELECT 'Value3' UNION ALL
SELECT 'Value4' UNION ALL
SELECT 'Value5' UNION ALL
SELECT 'Value6' UNION ALL
SELECT 'Value7' UNION ALL
SELECT 'Value8'

BeforeExecute
-- SqlServer.2005
DECLARE @take_3 Int -- Int32
SET     @take_3 = 1

SELECT TOP (@take_3)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlServer.2005

DROP TABLE [TakeSkipClass]

