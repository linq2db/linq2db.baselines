BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 35

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[FileName]
FROM
	(
		SELECT
			[c_1].[Id]
		FROM
			[Emails] [c_1]
		WHERE
			[c_1].[Id] = @p
		LIMIT 1
	) [m_1]
		INNER JOIN [EmailAttachment] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 35

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @p
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 36

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[EmailId],
	[d].[FileName]
FROM
	(
		SELECT
			[c_1].[Id]
		FROM
			[Emails] [c_1]
		WHERE
			[c_1].[Id] = @p
		LIMIT 1
	) [m_1]
		INNER JOIN [EmailAttachment] [d] ON [m_1].[Id] = [d].[EmailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 36

SELECT
	[c_1].[Id]
FROM
	[Emails] [c_1]
WHERE
	[c_1].[Id] = @p
LIMIT 1

BeforeExecute
DisposeTransaction
