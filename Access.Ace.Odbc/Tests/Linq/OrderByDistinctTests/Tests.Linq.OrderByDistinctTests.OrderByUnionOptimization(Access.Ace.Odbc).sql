BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [OrderByDistinctData]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [OrderByDistinctData]
(
	[Id]            Int           NOT NULL,
	[DuplicateData] NVarChar(255)     NULL,
	[OrderData1]    Int           NOT NULL,
	[OrderData2]    Int           NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'One'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 30
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 40
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 50
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 60
DECLARE @DuplicateData NVarChar(3) -- String
SET     @DuplicateData = 'Two'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 100
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 1

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 200
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 1
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 10

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 300
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 2
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 2

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 400
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 3
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 3

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 500
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 4
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 4

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 600
DECLARE @DuplicateData NVarChar(5) -- String
SET     @DuplicateData = 'Three'
DECLARE @OrderData1 Int -- Int32
SET     @OrderData1 = 5
DECLARE @OrderData2 Int -- Int32
SET     @OrderData2 = 5

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT DISTINCT
	[t1].[Id]
FROM
	(
		SELECT
			[x_2].[Id],
			[x_2].[DuplicateData],
			[x_2].[OrderData1],
			[x_2].[OrderData2]
		FROM
			(
				SELECT
					[x].[Id],
					[x].[DuplicateData],
					[x].[OrderData1],
					[x].[OrderData2]
				FROM
					[OrderByDistinctData] [x]
				WHERE
					[x].[Id] BETWEEN 1 AND 9
				UNION ALL
				SELECT
					[x_1].[Id],
					[x_1].[DuplicateData],
					[x_1].[OrderData1],
					[x_1].[OrderData2]
				FROM
					[OrderByDistinctData] [x_1]
				WHERE
					[x_1].[Id] BETWEEN 10 AND 90
			) [x_2]
		UNION
		SELECT
			[x_3].[Id],
			[x_3].[DuplicateData],
			[x_3].[OrderData1],
			[x_3].[OrderData2]
		FROM
			[OrderByDistinctData] [x_3]
		WHERE
			[x_3].[Id] BETWEEN 100 AND 900
	) [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [OrderByDistinctData]

