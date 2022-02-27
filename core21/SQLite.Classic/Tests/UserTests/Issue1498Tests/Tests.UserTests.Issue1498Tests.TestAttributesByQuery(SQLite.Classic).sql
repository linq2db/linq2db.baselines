BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Topic]
(
	[Id]    INTEGER       NOT NULL,
	[Title] NVarChar(255)     NULL,
	[Text]  NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Message]
(
	[Id]      INTEGER       NOT NULL,
	[TopicId] INTEGER       NOT NULL,
	[Text]    NVarChar(255)     NULL
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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[key_data_result].[Title],
	[key_data_result].[Text],
	[detail].[Id]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[t1].[Title],
			[t1].[Text]
		FROM
			(
				SELECT
					[x].[Id],
					[x].[Title],
					[x].[Text]
				FROM
					[Topic] [x]
				WHERE
					[x].[Id] = 6
				LIMIT @take
			) [t1]
	) [key_data_result]
		INNER JOIN [Message] [detail] ON [detail].[TopicId] = [key_data_result].[Id]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[Id],
	[x].[Title],
	[x].[Text]
FROM
	[Topic] [x]
WHERE
	[x].[Id] = 6
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Message]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Topic]

