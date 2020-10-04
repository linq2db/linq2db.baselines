BeforeExecute
-- SqlCe

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 4

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 6

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 7

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 8

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 9

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlCe
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
-- SqlCe

DROP TABLE [AsyncDataTable]

