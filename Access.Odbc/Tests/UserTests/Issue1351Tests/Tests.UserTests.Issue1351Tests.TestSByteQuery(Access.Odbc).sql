﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [T1351Model]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [T1351Model]
(
	[ID]           Int     NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [T1351Model]

