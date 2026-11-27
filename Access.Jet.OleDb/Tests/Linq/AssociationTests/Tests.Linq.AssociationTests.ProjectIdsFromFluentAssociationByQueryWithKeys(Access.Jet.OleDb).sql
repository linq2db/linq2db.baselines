-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarWChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarWChar(4) -- String
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 60
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 6
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'message'

INSERT INTO [ForumMessage]
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

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 61
DECLARE @TopicId Integer -- Int32
SET     @TopicId = 7
DECLARE @Text VarWChar(7) -- String
SET     @Text = 'message'

INSERT INTO [ForumMessage]
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

-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1]
FROM
	(
		SELECT TOP 1
			[x].[Id]
		FROM
			[ForumTopic] [x]
		WHERE
			[x].[Id] = 6
	) [m_1]
		INNER JOIN [ForumMessage] [d] ON ([d].[TopicId] = [m_1].[Id])

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 1
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[ForumTopic] [x]
WHERE
	[x].[Id] = 6

