BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[tmptbl1]
(
	[ID]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl1] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[tmptbl1]
(
	[ID],
	[Value]
)
VALUES
(1,'Value1'),
(2,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[tmptbl2]
(
	[ID]    INTEGER       NOT NULL,
	[Value] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_tmptbl2] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[tmptbl2]
(
	[ID],
	[Value]
)
VALUES
(1,'Value1'),
(3,'Value2')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[tmptbl3]
(
	[ID]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_tmptbl3] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[tmptbl3]
(
	[ID],
	[Value]
)
VALUES
(1,'Value1'),
(2,NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t4].[ID],
	[t4].[Value]
FROM
	temp.[tmptbl1] [t2]
		LEFT JOIN temp.[tmptbl2] [t3] ON [t2].[ID] = [t3].[ID]
		LEFT JOIN temp.[tmptbl3] [t4] ON Coalesce([t3].[Value], [t2].[Value]) = [t4].[Value] OR [t3].[Value] IS NULL AND [t2].[Value] IS NULL AND [t4].[Value] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[tmptbl1] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[tmptbl2] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[tmptbl3] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[tmptbl3]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[tmptbl2]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[tmptbl1]

