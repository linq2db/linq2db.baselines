BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 3 ROWS

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET 4 ROWS

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [TakeSkipClass]

