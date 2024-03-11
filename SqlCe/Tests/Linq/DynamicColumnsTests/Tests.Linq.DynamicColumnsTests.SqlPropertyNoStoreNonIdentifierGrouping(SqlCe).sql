﻿BeforeExecute
-- SqlCe

DROP TABLE [DynamicTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
SELECT 77,5 UNION ALL
SELECT 77,5

BeforeExecute
-- SqlCe

SELECT
	[g_1].[Not Identifier],
	Count(*) as [Count_1],
	Sum([g_1].[Some Value]) as [Sum_1]
FROM
	[DynamicTable] [g_1]
GROUP BY
	[g_1].[Not Identifier]

BeforeExecute
-- SqlCe

DROP TABLE [DynamicTable]

