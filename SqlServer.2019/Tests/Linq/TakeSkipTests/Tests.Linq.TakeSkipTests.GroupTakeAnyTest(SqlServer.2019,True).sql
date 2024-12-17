BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TakeSkipClass]
(
	[Value]
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF( EXISTS (
		SELECT TOP (@take)
			[item_1].[Value]
		FROM
			[TakeSkipClass] [item_1]
		GROUP BY
			[item_1].[Value]
		HAVING
			COUNT(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

