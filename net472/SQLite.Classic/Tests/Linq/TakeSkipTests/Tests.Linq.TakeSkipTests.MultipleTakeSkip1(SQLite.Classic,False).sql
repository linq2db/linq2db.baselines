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
('Value8')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Value]
FROM
	[TakeSkipClass] [t1]
ORDER BY
	[t1].[Value]
LIMIT 1 OFFSET 3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TakeSkipClass]

