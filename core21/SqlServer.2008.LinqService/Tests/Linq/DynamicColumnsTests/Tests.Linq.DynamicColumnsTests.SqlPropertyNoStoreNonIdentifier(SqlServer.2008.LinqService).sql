﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(77,0)

BeforeExecute
-- SqlServer.2008

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- SqlServer.2008

DROP TABLE [DynamicTable]

