﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Title VarWChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarWChar(4) -- String
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
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id]
FROM
	(
		SELECT TOP 1
			[x].[Id]
		FROM
			[Topic] [x]
		WHERE
			[x].[Id] = 6
	) [m_1]
		INNER JOIN [Message] [d] ON ([m_1].[Id] = [d].[TopicId])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

BeforeExecute
DisposeTransaction
