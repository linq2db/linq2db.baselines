BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param Int -- Int32
SET     @param = NULL

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
			[_].[Id] = [__].[FK] AND [__].[Id] = ?
	)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TestEqualsTable1]

