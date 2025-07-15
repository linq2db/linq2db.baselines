BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
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
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Detail]
FROM
	(
		SELECT TOP (1)
			[x].[Id]
		FROM
			[Topic] [x]
		WHERE
			[x].[Id] = 6
	) [m_1]
		INNER JOIN [Message] [d] ON [d].[TopicId] = [m_1].[Id]

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

