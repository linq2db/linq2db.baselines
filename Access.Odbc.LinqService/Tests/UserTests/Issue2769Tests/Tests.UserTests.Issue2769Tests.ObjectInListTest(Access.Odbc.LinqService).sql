BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SampleClass]
(
	[Id]        Int NOT NULL,
	[NullValue] Int     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @_default Int -- Int32
SET     @_default = 0
DECLARE @_default Int -- Int32
SET     @_default = 0
DECLARE @_default Int -- Int32
SET     @_default = 0

SELECT
	[a].[Id],
	[a].[NullValue]
FROM
	[SampleClass] [a]
WHERE
	([a].[Id] = 0 AND Iif([a].[NullValue] IS NULL, ?, [a].[NullValue]) = 0 OR [a].[Id] = 1 AND Iif([a].[NullValue] IS NULL, ?, [a].[NullValue]) = 1 OR [a].[Id] = 2 AND Iif([a].[NullValue] IS NULL, ?, [a].[NullValue]) = 2)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SampleClass]

