﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NullableBoolClass]
(
	[Value] Bit     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [NullableBoolClass]
(
	[Value]
)
VALUES
(NULL),
(1),
(0)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	([t].[Value] = @value)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	([t].[Value] = @value)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	([t].[Value] <> @value OR [t].[Value] IS NULL)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @value  -- Boolean
SET     @value = 0

SELECT
	[t].[Value]
FROM
	[NullableBoolClass] [t]
WHERE
	([t].[Value] <> @value)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [NullableBoolClass]

