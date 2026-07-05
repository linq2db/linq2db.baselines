-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_item_to_media_item_categories]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_to_media_item_categories]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_item_user_share]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_user_share]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_items]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_items]

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [issue_4254_media_items]
(
	[id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_items] PRIMARY KEY CLUSTERED ([id])
)

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [issue_4254_media_item_user_share]
(
	[id]            UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,
	[created_by_id] UniqueIdentifier NOT NULL,
	[user_id]       UniqueIdentifier NOT NULL,
	[expires_at]    DateTime2        NOT NULL,

	CONSTRAINT [PK_issue_4254_media_item_user_share] PRIMARY KEY CLUSTERED ([id])
)

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [issue_4254_media_item_to_media_item_categories]
(
	[id]            UniqueIdentifier NOT NULL,
	[category_id]   UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_issue_4254_media_item_to_media_item_categories] PRIMARY KEY CLUSTERED ([id])
)

SELECT
	[m_1].[id],
	[d].[category_id]
FROM
	[issue_4254_media_items] [m_1]
		INNER JOIN [issue_4254_media_item_to_media_item_categories] [d] ON [m_1].[id] = [d].[media_item_id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y]
		WHERE
			[m_1].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
			[y].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[m_1].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
			[y_1].[expires_at] > @now
	)
;
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
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now
	)

SELECT
	[m_1].[id],
	[d].[category_id]
FROM
	[issue_4254_media_items] [m_1]
		INNER JOIN [issue_4254_media_item_to_media_item_categories] [d] ON [m_1].[id] = [d].[media_item_id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y]
		WHERE
			[m_1].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
			[y].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[m_1].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
			[y_1].[expires_at] > @now
	)
;
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
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[issue_4254_media_item_user_share] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now
	)

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_item_to_media_item_categories]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_to_media_item_categories]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_item_user_share]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_item_user_share]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[issue_4254_media_items]', N'U') IS NOT NULL)
	DROP TABLE [issue_4254_media_items]

