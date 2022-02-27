BeforeExecute
-- SqlServer.2008

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[AsyncDataTable] [c_1]
		WHERE
			[c_1].[Id] = @Id
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2008

DROP TABLE [AsyncDataTable]

