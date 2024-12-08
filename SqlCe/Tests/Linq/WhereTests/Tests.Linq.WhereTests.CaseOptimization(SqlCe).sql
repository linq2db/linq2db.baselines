BeforeExecute
-- SqlCe

DROP TABLE [WhereWithString]

BeforeExecute
-- SqlCe

CREATE TABLE [WhereWithString]
(
	[Id]          Int           NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
SELECT 1,'Str1'

BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' ESCAPE '~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [WhereWithString]

