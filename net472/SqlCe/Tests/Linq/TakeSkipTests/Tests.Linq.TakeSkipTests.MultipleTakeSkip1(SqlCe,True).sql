BeforeExecute
-- SqlCe

CREATE TABLE [TakeSkipClass]
(
	[Value] NVarChar(10)     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS FETCH NEXT @take_1 ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

