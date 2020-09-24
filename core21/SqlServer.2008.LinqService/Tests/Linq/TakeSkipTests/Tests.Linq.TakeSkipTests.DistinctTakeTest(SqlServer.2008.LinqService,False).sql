BeforeExecute
-- SqlServer.2008

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT TOP (3)
	[t2].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Value] as [Value_1]
		FROM
			[TakeSkipClass] [t1]
	) [t2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TakeSkipClass]

