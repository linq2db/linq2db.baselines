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
SELECT 'PLUTO' UNION ALL
SELECT 'PIPPO' UNION ALL
SELECT 'PLUTO' UNION ALL
SELECT 'BOLTO'

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[Value] as [Value_1]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlCe

DROP TABLE [TakeSkipClass]

