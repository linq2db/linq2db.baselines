﻿BeforeExecute
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
SELECT 'Value8' UNION ALL
SELECT 'Value9'

BeforeExecute
-- SqlCe
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 3
DECLARE @skip_4 Int -- Int32
SET     @skip_4 = 1

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_3 ROWS FETCH NEXT @skip_4 ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

