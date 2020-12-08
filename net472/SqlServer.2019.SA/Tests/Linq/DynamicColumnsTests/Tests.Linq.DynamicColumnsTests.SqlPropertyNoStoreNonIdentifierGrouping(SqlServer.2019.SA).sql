BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [DynamicTable]
(
	[ID]             Int  NOT NULL IDENTITY,
	[Not Identifier] Int  NOT NULL,
	[Some Value]     Int  NOT NULL,

	CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Not Identifier],
	Count(*),
	Sum([t1].[Some Value])
FROM
	[DynamicTable] [t1]
GROUP BY
	[t1].[Not Identifier]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [DynamicTable]

