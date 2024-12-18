BeforeExecute
-- SqlCe

DROP TABLE [Table1]

BeforeExecute
-- SqlCe

CREATE TABLE [Table1]
(
	[Field1] Int NOT NULL,
	[Field2] Int NOT NULL,
	[Field3] Int     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

CREATE TABLE [Table2]
(
	[Field2] Int           NOT NULL,
	[Field4] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Table3]

BeforeExecute
-- SqlCe

CREATE TABLE [Table3]
(
	[Field5] Int NOT NULL,
	[Field1] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Table4]

BeforeExecute
-- SqlCe

CREATE TABLE [Table4]
(
	[Field5] Int NOT NULL,
	[Field6] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Table5]

BeforeExecute
-- SqlCe

CREATE TABLE [Table5]
(
	[Field3] Int     NULL,
	[Field7] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Table6]

BeforeExecute
-- SqlCe

CREATE TABLE [Table6]
(
	[Field7] Int           NOT NULL,
	[Field8] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

SELECT DISTINCT
	[a_Ref4].[Field6],
	[a_Ref3].[Field4],
	Coalesce([a_Ref5].[Field8], '') as [Field1]
FROM
	[Table1] [t1]
		INNER JOIN [Table3] [a_Ref1] ON [t1].[Field1] = [a_Ref1].[Field1]
		INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
		LEFT JOIN [Table2] [a_Ref3] ON [t1].[Field2] = [a_Ref3].[Field2]
		LEFT JOIN [Table5] [a_Ref2] ON [t1].[Field3] = [a_Ref2].[Field3] AND [t1].[Field3] IS NOT NULL AND [a_Ref2].[Field3] IS NOT NULL OR [t1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
		LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
WHERE
	[t1].[Field3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[g_2].[Field6],
	[g_2].[Field4],
	COUNT(*) as [cond]
FROM
	(
		SELECT DISTINCT
			[a_Ref4].[Field6],
			[a_Ref3].[Field4],
			Coalesce([a_Ref5].[Field8], '') as [Field1]
		FROM
			[Table1] [g_1]
				INNER JOIN [Table3] [a_Ref1] ON [g_1].[Field1] = [a_Ref1].[Field1]
				INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
				LEFT JOIN [Table2] [a_Ref3] ON [g_1].[Field2] = [a_Ref3].[Field2]
				LEFT JOIN [Table5] [a_Ref2] ON [g_1].[Field3] = [a_Ref2].[Field3] AND [g_1].[Field3] IS NOT NULL AND [a_Ref2].[Field3] IS NOT NULL OR [g_1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
				LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
		WHERE
			[g_1].[Field3] IS NOT NULL
	) [g_2]
GROUP BY
	[g_2].[Field6],
	[g_2].[Field4]
HAVING
	COUNT(*) > 1

BeforeExecute
-- SqlCe

DROP TABLE [Table6]

BeforeExecute
-- SqlCe

DROP TABLE [Table5]

BeforeExecute
-- SqlCe

DROP TABLE [Table4]

BeforeExecute
-- SqlCe

DROP TABLE [Table3]

BeforeExecute
-- SqlCe

DROP TABLE [Table2]

BeforeExecute
-- SqlCe

DROP TABLE [Table1]

