BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_item_to_media_item_categories]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_item_user_share]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_items]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_items]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [issue_4254_media_items]
(
	[id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_items] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [issue_4254_media_item_user_share]
(
	[id]            UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,
	[created_by_id] UniqueIdentifier NOT NULL,
	[user_id]       UniqueIdentifier NOT NULL,
	[expires_at]    DateTime2        NOT NULL,

	CONSTRAINT [PK_issue_4254_media_item_user_share] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [issue_4254_media_item_to_media_item_categories]
(
	[id]            UniqueIdentifier NOT NULL,
	[category_id]   UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_item_to_media_item_categories] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'cdbcb3ef-6e50-491e-ae47-462f735a9ade'
DECLARE @now DateTime2
SET     @now = CAST('2023-08-30T21:18:25.1212243' AS DATETIME2)

SELECT
	[key_data_result].[id],
	[detail].[category_id]
FROM
	(
		SELECT DISTINCT
			[x].[id]
		FROM
			[issue_4254_media_items] [x]
		WHERE
			(EXISTS(
				SELECT
					*
				FROM
					[issue_4254_media_item_user_share] [y]
				WHERE
					[x].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
					[y].[expires_at] > @now
			) OR EXISTS(
				SELECT
					*
				FROM
					[issue_4254_media_item_user_share] [y_1]
				WHERE
					[x].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
					[y_1].[expires_at] > @now
			))
	) [key_data_result]
		INNER JOIN [issue_4254_media_item_to_media_item_categories] [detail] ON [key_data_result].[id] = [detail].[media_item_id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008
DECLARE @now DateTime2
SET     @now = CAST('2023-08-30T21:18:25.1212243' AS DATETIME2)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'cdbcb3ef-6e50-491e-ae47-462f735a9ade'
DECLARE @now_1 DateTime2
SET     @now_1 = CAST('2023-08-30T21:18:25.1212243' AS DATETIME2)
DECLARE @now_2 DateTime2
SET     @now_2 = CAST('2023-08-30T21:18:25.1212243' AS DATETIME2)

SELECT
	[x].[id],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[issue_4254_media_item_user_share] [y]
			WHERE
				[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
		)
			THEN 1
		ELSE 0
	END
FROM
	[issue_4254_media_items] [x]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now_1
	) OR EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now_2
	))

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '71303cd0-da8a-43d3-8ef2-d8c8b0f884af'
DECLARE @now DateTime2
SET     @now = CAST('2023-08-30T21:18:25.2364302' AS DATETIME2)

SELECT
	[key_data_result].[id],
	[detail].[category_id]
FROM
	(
		SELECT DISTINCT
			[x].[id]
		FROM
			[issue_4254_media_items] [x]
		WHERE
			(EXISTS(
				SELECT
					*
				FROM
					[issue_4254_media_item_user_share] [y]
				WHERE
					[x].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
					[y].[expires_at] > @now
			) OR EXISTS(
				SELECT
					*
				FROM
					[issue_4254_media_item_user_share] [y_1]
				WHERE
					[x].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
					[y_1].[expires_at] > @now
			))
	) [key_data_result]
		INNER JOIN [issue_4254_media_item_to_media_item_categories] [detail] ON [key_data_result].[id] = [detail].[media_item_id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008
DECLARE @now DateTime2
SET     @now = CAST('2023-08-30T21:18:25.2364302' AS DATETIME2)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '71303cd0-da8a-43d3-8ef2-d8c8b0f884af'
DECLARE @now_1 DateTime2
SET     @now_1 = CAST('2023-08-30T21:18:25.2364302' AS DATETIME2)
DECLARE @now_2 DateTime2
SET     @now_2 = CAST('2023-08-30T21:18:25.2364302' AS DATETIME2)

SELECT
	[x].[id],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[issue_4254_media_item_user_share] [y]
			WHERE
				[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
		)
			THEN 1
		ELSE 0
	END
FROM
	[issue_4254_media_items] [x]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now_1
	) OR EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now_2
	))

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_item_to_media_item_categories]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_item_user_share]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[issue_4254_media_items]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_items]

