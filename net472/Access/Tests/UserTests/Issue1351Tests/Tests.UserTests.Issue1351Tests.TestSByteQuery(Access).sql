BeforeExecute
-- Access AccessOleDb

CREATE TABLE [T1351Model]
(
	[ID]           Int     NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- Access AccessOleDb

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [T1351Model]

