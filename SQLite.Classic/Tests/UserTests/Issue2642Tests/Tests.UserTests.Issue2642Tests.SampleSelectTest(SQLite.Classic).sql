BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [mails]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [mails]
(
	[Id]      INTEGER   NOT NULL,
	[AddTime] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachments]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EmailAttachments]
(
	[Id]      INTEGER       NOT NULL,
	[EmailId] INTEGER       NOT NULL,
	[Data]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [IIRs]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [IIRs]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @DateTime VarChar(23) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.123'

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
			strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', @DateTime)
	) [m_1]
		INNER JOIN [EmailAttachments] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @DateTime VarChar(23) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[p].[Id],
	[p].[AddTime]
FROM
	[mails] [p]
		INNER JOIN [IIRs] [i] ON [p].[Id] = [i].[Id]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [p].[AddTime]) > strftime('%Y-%m-%d %H:%M:%f', @DateTime)
ORDER BY
	[p].[AddTime]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [IIRs]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EmailAttachments]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [mails]

