﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF(EXISTS(
		SELECT TOP (@take)
			[t1].[Value]
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NOT NULL)
	DROP TABLE [TakeSkipClass]

