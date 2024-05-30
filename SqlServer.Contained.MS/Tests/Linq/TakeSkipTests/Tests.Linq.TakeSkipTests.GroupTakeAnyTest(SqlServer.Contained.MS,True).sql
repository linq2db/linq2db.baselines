BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF(EXISTS(
		SELECT TOP (@take)
			[group_1].[Value]
		FROM
			[TakeSkipClass] [group_1]
		GROUP BY
			[group_1].[Value]
		HAVING
			COUNT(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

