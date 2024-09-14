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
-- SqlCe

DROP TABLE [DynamicChild]

BeforeExecute
-- SqlCe

DROP TABLE [DynamicParent]

