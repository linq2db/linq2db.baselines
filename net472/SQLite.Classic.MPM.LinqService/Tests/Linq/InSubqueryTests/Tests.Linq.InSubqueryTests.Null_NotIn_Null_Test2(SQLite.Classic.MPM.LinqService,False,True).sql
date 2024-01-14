BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_1]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 4

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [test_in_1]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [test_in_2]
(
	[ID] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 4

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 6

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = NULL

INSERT INTO [test_in_2]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	NOT (EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [param]
		WHERE
			([param].[ID] = [t].[ID] OR [param].[ID] IS NULL AND [t].[ID] IS NULL)
	))

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [test_in_1]

