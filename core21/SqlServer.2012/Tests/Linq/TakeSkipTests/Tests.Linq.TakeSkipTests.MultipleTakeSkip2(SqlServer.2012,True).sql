BeforeExecute
-- SqlServer.2012

CREATE TABLE [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 3
DECLARE @take_1 Int -- Int32
SET     @take_1 = 2

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip_2 ROWS FETCH NEXT @take_1 ROWS ONLY 

BeforeExecute
-- SqlServer.2012

DROP TABLE [TakeSkipClass]

