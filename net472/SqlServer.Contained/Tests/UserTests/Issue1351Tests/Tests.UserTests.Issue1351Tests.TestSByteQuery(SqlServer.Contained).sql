﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [T1351Model]
(
	[ID]           Int     NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	[_].[TestField] = 0

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[_].[ID],
	[_].[TestField],
	[_].[TestNullable]
FROM
	[T1351Model] [_]
WHERE
	([_].[TestNullable] <> 1 OR [_].[TestNullable] IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [T1351Model]

