BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TakeSkipClass]
(
	[Value] VarChar(10)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @take_2  -- Int32
SET     @take_2 = 2
DECLARE @skip_2  -- Int32
SET     @skip_2 = 3

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT @take_2 OFFSET @skip_2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

