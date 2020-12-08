BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2

SELECT
	Max([c_1].[Id])
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @Id

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [AsyncDataTable]

