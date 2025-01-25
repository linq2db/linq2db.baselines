BeforeExecute
-- SqlCe

DROP TABLE [T1351Model]

BeforeExecute
-- SqlCe

CREATE TABLE [T1351Model]
(
	[ID]           Int     NOT NULL,
	[TestField]    TinyInt NOT NULL,
	[TestNullable] TinyInt     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	[t1].[TestField] = 0

BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[TestField],
	[t1].[TestNullable]
FROM
	[T1351Model] [t1]
WHERE
	([t1].[TestNullable] <> 1 OR [t1].[TestNullable] IS NULL)

BeforeExecute
-- SqlCe

DROP TABLE [T1351Model]

