BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @param Integer -- Int32
SET     @param = 0

SELECT
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			([__].[Id] = @param) AND ([_].[Id] = [__].[FK])
	)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestEqualsTable1]

