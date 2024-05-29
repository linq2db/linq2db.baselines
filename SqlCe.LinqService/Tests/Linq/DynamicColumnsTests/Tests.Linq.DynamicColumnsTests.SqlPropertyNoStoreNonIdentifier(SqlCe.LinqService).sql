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
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[d].[Not Identifier] as [NI]
FROM
	[DynamicTable] [d]

BeforeExecute
-- SqlCe

DROP TABLE [DynamicTable]

