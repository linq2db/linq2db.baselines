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
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_2 ROWS

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TakeSkipClass]

