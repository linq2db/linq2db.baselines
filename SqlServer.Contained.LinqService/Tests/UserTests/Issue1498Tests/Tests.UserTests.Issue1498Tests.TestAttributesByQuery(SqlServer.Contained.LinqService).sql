﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Title NVarChar(4000) -- String
SET     @Title = N'title'
DECLARE @Text NVarChar(4000) -- String
SET     @Text = N'text'

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
-- SqlServer.Contained SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id]
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
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6

