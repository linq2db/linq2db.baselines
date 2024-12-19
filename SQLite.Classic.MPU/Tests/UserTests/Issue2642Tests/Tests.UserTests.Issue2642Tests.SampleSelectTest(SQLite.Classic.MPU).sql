BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [mails]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [mails]
(
	[Id]      INTEGER   NOT NULL,
	[AddTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachments]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachments]
(
	[Id]      INTEGER       NOT NULL,
	[EmailId] INTEGER       NOT NULL,
	[Data]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [IIRs]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [IIRs]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[Data]
FROM
	(
		SELECT DISTINCT
			[p].[Id]
		FROM
			[mails] [p]
				INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
		WHERE
			strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')
	) [m_1]
		INNER JOIN [EmailAttachments] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[AddTime]
FROM
	[mails] [p]
		INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', '2020-02-29 17:54:55.123')
ORDER BY
	[p].[AddTime]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [IIRs]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachments]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [mails]

