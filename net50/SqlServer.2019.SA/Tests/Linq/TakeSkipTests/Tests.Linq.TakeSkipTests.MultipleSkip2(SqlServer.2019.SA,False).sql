BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

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
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 3 ROWS

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 4 ROWS

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TakeSkipClass]

