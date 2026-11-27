-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_item_categories]

-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_item_shares]

-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_items]

-- SqlServer.2016.MS SqlServer.2016
CREATE TABLE [param_name_items]
(
	[id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_param_name_items] PRIMARY KEY CLUSTERED ([id])
)

-- SqlServer.2016.MS SqlServer.2016
CREATE TABLE [param_name_item_shares]
(
	[id]            UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,
	[created_by_id] UniqueIdentifier NOT NULL,
	[user_id]       UniqueIdentifier NOT NULL,
	[expires_at]    DateTime2        NOT NULL,

	CONSTRAINT [PK_param_name_item_shares] PRIMARY KEY CLUSTERED ([id])
)

-- SqlServer.2016.MS SqlServer.2016
CREATE TABLE [param_name_item_categories]
(
	[id]            UniqueIdentifier NOT NULL,
	[category_id]   UniqueIdentifier NOT NULL,
	[media_item_id] UniqueIdentifier NOT NULL,

	CONSTRAINT [PK_param_name_item_categories] PRIMARY KEY CLUSTERED ([id])
)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

SELECT
	[m_1].[id],
	[d].[category_id]
FROM
	[param_name_items] [m_1]
		INNER JOIN [param_name_item_categories] [d] ON [m_1].[id] = [d].[media_item_id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y]
		WHERE
			[m_1].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
			[y].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_1]
		WHERE
			[m_1].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
			[y_1].[expires_at] > @now
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	[x].[id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y]
		WHERE
			[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
	), 1, 0)
FROM
	[param_name_items] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

SELECT
	[m_1].[id],
	[d].[category_id]
FROM
	[param_name_items] [m_1]
		INNER JOIN [param_name_item_categories] [d] ON [m_1].[id] = [d].[media_item_id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y]
		WHERE
			[m_1].[id] = [y].[media_item_id] AND [y].[user_id] = @userId AND
			[y].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_1]
		WHERE
			[m_1].[id] = [y_1].[media_item_id] AND [y_1].[created_by_id] = @userId AND
			[y_1].[expires_at] > @now
	)

-- SqlServer.2016.MS SqlServer.2016
DECLARE @now DateTime2
SET     @now = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)
DECLARE @userId UniqueIdentifier -- Guid
SET     @userId = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	[x].[id],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y]
		WHERE
			[x].[id] = [y].[media_item_id] AND [y].[expires_at] > @now
	), 1, 0)
FROM
	[param_name_items] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_1]
		WHERE
			[x].[id] = [y_1].[media_item_id] AND [y_1].[user_id] = @userId AND
			[y_1].[expires_at] > @now
	) OR
	EXISTS(
		SELECT
			*
		FROM
			[param_name_item_shares] [y_2]
		WHERE
			[x].[id] = [y_2].[media_item_id] AND [y_2].[created_by_id] = @userId AND
			[y_2].[expires_at] > @now
	)

-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_item_categories]

-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_item_shares]

-- SqlServer.2016.MS SqlServer.2016
DROP TABLE IF EXISTS [param_name_items]

