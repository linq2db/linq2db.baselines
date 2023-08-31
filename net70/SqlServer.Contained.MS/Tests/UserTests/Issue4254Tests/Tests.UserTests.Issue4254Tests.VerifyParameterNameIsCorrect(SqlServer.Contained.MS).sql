BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_items]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [issue_4254_media_items]
(
	[id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_items] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '78cd7c5b-2a4f-497a-bf8e-94a84302a192'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 4848318, 7)

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 4848318, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '78cd7c5b-2a4f-497a-bf8e-94a84302a192'
DECLARE @now_1 DateTime2
SET     @now_1 = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 4848318, 7)
DECLARE @now_2 DateTime2
SET     @now_2 = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 4848318, 7)

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '63a38cb1-5dc6-449e-8454-ad1e85cfe16b'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 5551903, 7)

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 5551903, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = '63a38cb1-5dc6-449e-8454-ad1e85cfe16b'
DECLARE @now_1 DateTime2
SET     @now_1 = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 5551903, 7)
DECLARE @now_2 DateTime2
SET     @now_2 = DATETIME2FROMPARTS(2023, 8, 31, 8, 26, 28, 5551903, 7)

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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_to_media_item_categories]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_item_user_share]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [issue_4254_media_items]

