BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [AsyncDataTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[AsyncDataTable]', N'U') IS NULL)
	CREATE TABLE [AsyncDataTable]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	COUNT(*)
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] = @p

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [AsyncDataTable]

