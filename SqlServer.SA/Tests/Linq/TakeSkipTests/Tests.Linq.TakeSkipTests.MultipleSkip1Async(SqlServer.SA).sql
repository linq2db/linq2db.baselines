BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

