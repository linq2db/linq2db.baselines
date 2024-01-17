﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @NotIdentifier Integer -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer -- Int32
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
-- Access AccessOleDb

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicTable]

