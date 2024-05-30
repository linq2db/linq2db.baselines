BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transactions]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Transactions]
(
	[TransactionId]   INTEGER NOT NULL,
	[TransactionDate] Date    NOT NULL,

	CONSTRAINT [PK_Transactions] PRIMARY KEY ([TransactionId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-02-29'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2021-02-28'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2019-02-28'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-03-29'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-01-29'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-03-01'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-02-28'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-08-09'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2021-08-09'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2019-08-09'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-09-09'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-07-09'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-08-10'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @TransactionId  -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate VarChar(10) -- AnsiString
SET     @TransactionDate = '2020-08-08'

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	CAST(strftime('%d', [d].[TransactionDate]) AS INTEGER) > 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transactions]

