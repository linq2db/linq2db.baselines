BeforeExecute
-- SqlCe

DROP TABLE [Table1788]

BeforeExecute
-- SqlCe

CREATE TABLE [Table1788]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,

	CONSTRAINT [PK_Table1788] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table1788]
(
	[Id],
	[Value1]
)
SELECT 1,11 UNION ALL
SELECT 2,22 UNION ALL
SELECT 3,33

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1]
FROM
	[Table1788] [t1]

BeforeExecute
-- SqlCe

SELECT
	[l].[Value1]
FROM
	[Table1788] [p]
		LEFT JOIN [Table1788] [l] ON [l].[Id] = [p].[Id] + 1

BeforeExecute
-- SqlCe

DROP TABLE [Table1788]

