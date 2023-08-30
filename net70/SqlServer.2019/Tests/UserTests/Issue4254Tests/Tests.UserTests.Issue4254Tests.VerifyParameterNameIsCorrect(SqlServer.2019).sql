BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_items]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [issue_4254_media_items]
(
	[id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_items] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

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
-- SqlServer.2019
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'e0df8212-20bf-42a6-9354-e47b5e803fde'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 5036250, 7)

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
-- SqlServer.2019
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 5036250, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'e0df8212-20bf-42a6-9354-e47b5e803fde'
DECLARE @now_1 DateTime2
SET     @now_1 = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 5036250, 7)
DECLARE @now_2 DateTime2
SET     @now_2 = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 5036250, 7)

SELECT
	[x].[id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y]
		WHERE
			[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
	), 1, 0)
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
-- SqlServer.2019
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'b4b6c7aa-59d5-40b8-9470-04d67c97c74a'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 6144087, 7)

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
-- SqlServer.2019
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 6144087, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'b4b6c7aa-59d5-40b8-9470-04d67c97c74a'
DECLARE @now_1 DateTime2
SET     @now_1 = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 6144087, 7)
DECLARE @now_2 DateTime2
SET     @now_2 = DATETIME2FROMPARTS(2023, 8, 30, 17, 24, 30, 6144087, 7)

SELECT
	[x].[id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y]
		WHERE
			[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
	), 1, 0)
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
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_items]

