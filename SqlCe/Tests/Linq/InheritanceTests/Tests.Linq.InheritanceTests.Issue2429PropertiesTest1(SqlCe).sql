BeforeExecute
-- SqlCe

DROP TABLE [BaseTable]

BeforeExecute
-- SqlCe

CREATE TABLE [BaseTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[x].[Id],
	[x].[Value] as [BaseValue]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[x].[Id],
	[x].[Value] as [BaseValue]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- SqlCe

DROP TABLE [BaseTable]

