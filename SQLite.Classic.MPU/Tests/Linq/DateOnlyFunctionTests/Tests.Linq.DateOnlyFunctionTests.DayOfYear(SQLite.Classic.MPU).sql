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

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(1,'2020-02-29'),
(2,'2021-02-28'),
(3,'2019-02-28'),
(4,'2020-03-29'),
(5,'2020-01-29'),
(6,'2020-03-01'),
(7,'2020-02-28'),
(8,'2020-08-09'),
(9,'2021-08-09'),
(10,'2019-08-09'),
(11,'2020-09-09'),
(12,'2020-07-09'),
(13,'2020-08-10'),
(14,'2020-08-08')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CAST(strftime('%j', [t].[TransactionDate]) AS INTEGER)
FROM
	[Transactions] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Transactions]

