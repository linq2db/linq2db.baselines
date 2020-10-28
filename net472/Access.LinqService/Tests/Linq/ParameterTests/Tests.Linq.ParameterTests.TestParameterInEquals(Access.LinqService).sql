BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[_].[Id] = [__].[FK] AND [__].[Id] IS NULL
	))

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable1]

