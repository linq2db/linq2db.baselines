BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [AsyncDataTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NULL)
	CREATE TABLE [AsyncDataTable]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 2

SELECT TOP (2)
	@Id,
	[c_1].[Id]
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @Id_1

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [AsyncDataTable]

