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
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 1

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_2 ROWS FETCH NEXT @skip_3 ROWS ONLY 

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TakeSkipClass]

