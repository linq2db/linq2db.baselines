-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'text'

INSERT INTO [ForumTopic]
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

-- SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	(
		SELECT
			[x].[Id]
		FROM
			[ForumTopic] [x]
		WHERE
			[x].[Id] = 6
		LIMIT 1
	) [m_1]
		INNER JOIN [ForumMessage] [d] ON [m_1].[Id] = [d].[TopicId]

-- SQLite.Classic SQLite
SELECT
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[ForumTopic] [x]
WHERE
	[x].[Id] = 6
LIMIT 1

