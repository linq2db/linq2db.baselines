BeforeExecute
-- SqlCe

DROP TABLE [Issue3323Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3323Table]
(
	[Id]       Int           NOT NULL,
	[FistName] NVarChar(255)     NULL,
	[LastName] NVarChar(255)     NULL,
	[Text]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[FistName] + ' ' + [r].[LastName] as [Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1 as [Id],
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlCe

SELECT
	[r].[Id] + 1 as [Id],
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FistName] + ' ' + [r_1].[LastName] as [Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue3323Table]

