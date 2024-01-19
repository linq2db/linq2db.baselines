BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Topic]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Topic]
(
	[Id]    INTEGER       NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Message]
(
	[Id]      INTEGER       NOT NULL,
	[TopicId] INTEGER       NOT NULL,
	[Text]    NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'text'

INSERT INTO [Topic]
(
	[Id],
	[Title],
	[Text]
)
VALUES
(
	@Id,
	@Title,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	(
		SELECT
			[x].[Id]
		FROM
			[Topic] [x]
		WHERE
			[x].[Id] = 6
		LIMIT 1
	) [m_1]
		INNER JOIN [Message] [d] ON [d].[TopicId] = [m_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Topic]

