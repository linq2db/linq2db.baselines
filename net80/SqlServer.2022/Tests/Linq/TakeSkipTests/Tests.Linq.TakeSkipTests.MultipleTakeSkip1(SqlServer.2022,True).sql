BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 1

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS FETCH NEXT @skip_1 ROWS ONLY 

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [TakeSkipClass]

