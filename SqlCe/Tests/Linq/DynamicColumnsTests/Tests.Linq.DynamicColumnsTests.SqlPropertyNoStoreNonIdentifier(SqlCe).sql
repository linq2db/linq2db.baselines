BeforeExecute
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
SELECT 77,0

BeforeExecute
-- SqlCe

SELECT
	[d].[Not Identifier] as [NotIdentifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- SqlCe

DROP TABLE [DynamicTable]

