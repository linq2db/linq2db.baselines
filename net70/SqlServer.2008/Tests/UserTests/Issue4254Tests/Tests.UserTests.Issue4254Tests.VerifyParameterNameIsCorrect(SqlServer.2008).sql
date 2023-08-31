﻿BeforeExecute
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
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @now DateTime2
SET     @now = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

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
SET     @now = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @now_1 DateTime2
SET     @now_1 = CAST('2020-02-29T17:54:55.1231234' AS DATETIME2)

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
			[y_2].[expires_at] > @now_1
	))

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @now DateTime2
SET     @now = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

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
SET     @now = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @now_1 DateTime2
SET     @now_1 = CAST('2020-02-29T17:54:55.1230000' AS DATETIME2)

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
			[y_2].[expires_at] > @now_1
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

