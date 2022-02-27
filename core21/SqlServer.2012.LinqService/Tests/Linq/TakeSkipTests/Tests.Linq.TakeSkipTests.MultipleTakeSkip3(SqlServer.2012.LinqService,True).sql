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
('Value8'),
('Value9')

BeforeExecute
-- SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
OFFSET @skip ROWS FETCH NEXT @take_2 ROWS ONLY 

BeforeExecute
-- SqlServer.2012

DROP TABLE [TakeSkipClass]

