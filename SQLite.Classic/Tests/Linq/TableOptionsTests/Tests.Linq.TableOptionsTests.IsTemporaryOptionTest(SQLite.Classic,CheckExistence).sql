﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[temp_table1]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO temp.[temp_table1]
(
	[ID],
	[Value]
)
VALUES
(1,2)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[temp_table2]
(
	[ID]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO temp.[temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[temp_table1] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[temp_table1] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	temp.[temp_table2] [t1]

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO temp.[temp_table1]
(
	[ID],
	[Value]
)
VALUES
(2,3)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value  -- Int32
SET     @Value = 3

INSERT INTO temp.[temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO temp.[temp_table1]
(
	[ID],
	[Value]
)
VALUES
(4,5)

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM temp.[temp_table1]

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM temp.[temp_table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[temp_table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[temp_table1]

