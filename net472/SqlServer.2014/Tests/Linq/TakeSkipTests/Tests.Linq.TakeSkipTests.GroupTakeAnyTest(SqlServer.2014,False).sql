BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT TOP (1)
			[t1].[Value]
		FROM
			[TakeSkipClass] [t1]
		GROUP BY
			[t1].[Value]
		HAVING
			Count(*) > 1
	), 1, 0)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TakeSkipClass]

