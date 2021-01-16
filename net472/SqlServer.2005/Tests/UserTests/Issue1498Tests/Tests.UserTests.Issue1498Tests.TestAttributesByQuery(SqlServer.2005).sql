BeforeExecute
-- SqlServer.2005

CREATE TABLE [Topic]
(
	[Id]    Int            NOT NULL,
	[Title] NVarChar(4000)     NULL,
	[Text]  NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Message]
(
	[Id]      Int            NOT NULL,
	[TopicId] Int            NOT NULL,
	[Text]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005

DROP TABLE [Message]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Topic]

