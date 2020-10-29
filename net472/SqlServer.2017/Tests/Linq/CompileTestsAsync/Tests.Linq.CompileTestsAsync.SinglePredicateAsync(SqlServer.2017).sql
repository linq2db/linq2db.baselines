BeforeExecute
-- SqlServer.2017

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017 (asynchronously)
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @Id_2 Int -- Int32
SET     @Id_2 = 2

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id_2

BeforeExecute
-- SqlServer.2017

DROP TABLE [AsyncDataTable]

