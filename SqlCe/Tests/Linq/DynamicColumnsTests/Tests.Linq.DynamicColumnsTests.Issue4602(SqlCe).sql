BeforeExecute
-- SqlCe

DROP TABLE [DynamicParent]

BeforeExecute
-- SqlCe

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

DROP TABLE [DynamicChild]

BeforeExecute
-- SqlCe

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON [it].[ID] = [a_Child].[ParentID]
WHERE
	[a_Child].[ID] = 123 AND [a_Child].[ID] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [DynamicChild]

BeforeExecute
-- SqlCe

DROP TABLE [DynamicParent]

