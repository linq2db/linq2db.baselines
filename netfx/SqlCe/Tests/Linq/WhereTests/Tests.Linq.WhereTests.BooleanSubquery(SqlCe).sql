BeforeExecute
-- SqlCe

DROP TABLE [WhereWithBool]

BeforeExecute
-- SqlCe

CREATE TABLE [WhereWithBool]
(
	[Id]        Int NOT NULL,
	[BoolValue] Bit NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
SELECT 1,1

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1 AND [x].[BoolValue] = 1
	)

BeforeExecute
-- SqlCe

DROP TABLE [WhereWithBool]

