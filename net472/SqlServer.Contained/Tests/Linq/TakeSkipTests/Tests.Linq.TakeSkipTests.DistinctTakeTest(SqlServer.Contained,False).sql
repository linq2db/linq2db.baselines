﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

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
-- SqlServer.Contained SqlServer.2017

SELECT DISTINCT TOP (3)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TakeSkipClass]

