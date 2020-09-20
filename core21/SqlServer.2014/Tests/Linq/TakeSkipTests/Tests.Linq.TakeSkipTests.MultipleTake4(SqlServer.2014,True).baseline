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
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT TOP (@take_2)
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [TakeSkipClass]

