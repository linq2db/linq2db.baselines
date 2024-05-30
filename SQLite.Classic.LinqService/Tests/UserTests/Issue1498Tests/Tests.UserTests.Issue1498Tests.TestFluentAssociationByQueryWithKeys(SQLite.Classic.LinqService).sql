BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Topic]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Topic]
(
	[Id]    INTEGER       NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL,

	CONSTRAINT [PK_Topic] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Message]
(
	[Id]      INTEGER       NOT NULL,
	[TopicId] INTEGER       NOT NULL,
	[Text]    NVarChar(255)     NULL,

	CONSTRAINT [PK_Message] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 60
DECLARE @TopicId  -- Int32
SET     @TopicId = 6
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 61
DECLARE @TopicId  -- Int32
SET     @TopicId = 7
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'message'

INSERT INTO [Message]
(
	[Id],
	[TopicId],
	[Text]
)
VALUES
(
	@Id,
	@TopicId,
	@Text
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Message]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Topic]

