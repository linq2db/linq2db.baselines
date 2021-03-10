BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TakeSkipClass]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TakeSkipClass]', N'U') IS NULL)
	CREATE TABLE [TakeSkipClass]
	(
		[Value] VarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

SELECT DISTINCT TOP (3)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TakeSkipClass]

