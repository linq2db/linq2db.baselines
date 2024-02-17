﻿BeforeExecute
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

SELECT
	IIF(EXISTS(
		SELECT TOP (1)
			*
		FROM
			(
				SELECT
					Count(*) as [Count_1]
				FROM
					[TakeSkipClass] [group_1]
				GROUP BY
					[group_1].[Value]
			) [group_2]
		WHERE
			[group_2].[Count_1] > 1
	), 1, 0)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TakeSkipClass]

