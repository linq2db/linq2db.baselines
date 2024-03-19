BeforeExecute
-- SqlCe

DROP TABLE [Issue1622Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1622Table]
(
	[Id]       Int           NOT NULL,
	[SomeText] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1622Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeText NVarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO [Issue1622Table]
(
	[Id],
	[SomeText]
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [Issue1622Table]

