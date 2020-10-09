BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT TOP (1) 
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TakeSkipClass]

