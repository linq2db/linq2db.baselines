BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

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

SELECT
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 3 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

