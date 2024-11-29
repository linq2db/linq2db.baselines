BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [T1351Model]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [T1351Model]
(
	[ID]           Int     NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [T1351Model]

