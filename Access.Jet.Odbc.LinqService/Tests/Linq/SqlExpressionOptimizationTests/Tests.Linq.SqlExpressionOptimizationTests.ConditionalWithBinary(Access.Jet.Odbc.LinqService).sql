BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [OptimizationData]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [OptimizationData]
(
	[Id]                  Int           NOT NULL,
	[IntVlaue]            Int           NOT NULL,
	[IntVlaueNullable]    Int               NULL,
	[BoolValue]           Bit           NOT NULL,
	[BoolValueNullable]   Bit               NULL,
	[StringValue]         NVarChar(255)     NULL,
	[StringValueNullable] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = True
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 2
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 4
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 0
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = True
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable NVarChar -- String
SET     @StringValueNullable = NULL

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 3
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = True
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable NVarChar -- String
SET     @StringValueNullable = NULL

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = False
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = False
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '1'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '1'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 2
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = True
DECLARE @StringValue NVarChar(1) -- String
SET     @StringValue = '0'
DECLARE @StringValueNullable NVarChar(1) -- String
SET     @StringValueNullable = '0'

INSERT INTO [OptimizationData]
(
	[Id],
	[IntVlaue],
	[IntVlaueNullable],
	[BoolValue],
	[BoolValueNullable],
	[StringValue],
	[StringValueNullable]
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[IntVlaue] <> 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[IntVlaue] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[IntVlaue] <> 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] <> 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[IntVlaue] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[IntVlaue] <> 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[IntVlaue] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[BoolValue] = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[BoolValue] = False

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[BoolValue] = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[BoolValue] = False

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	NOT [x].[BoolValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[BoolValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	NOT [swap].[BoolValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[BoolValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[BoolValue] = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[BoolValue] = False

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[BoolValue] = True

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[BoolValue] = False

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[StringValueNullable] IS NOT NULL AND [x].[StringValueNullable] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[StringValueNullable] IS NOT NULL AND [x_with_not].[StringValueNullable] IS NOT NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[StringValueNullable] IS NOT NULL AND [swap].[StringValueNullable] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	NOT ([swap_with_not].[StringValueNullable] IS NOT NULL AND [swap_with_not].[StringValueNullable] IS NOT NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[StringValueNullable] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	[x_with_not].[StringValueNullable] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[StringValueNullable] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	[swap_with_not].[StringValueNullable] IS NOT NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	1 = 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[StringValueNullable] IS NULL OR [x].[StringValueNullable] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[StringValueNullable] IS NULL OR [x_with_not].[StringValueNullable] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[StringValueNullable] IS NULL OR [x].[StringValueNullable] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[StringValueNullable] IS NULL OR [x_with_not].[StringValueNullable] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[StringValueNullable] IS NULL OR [swap].[StringValueNullable] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	NOT ([swap_with_not].[StringValueNullable] IS NULL OR [swap_with_not].[StringValueNullable] IS NULL)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	IIF([x].[StringValueNullable] IS NOT NULL, IIF([x].[StringValueNullable] = '2', 2, 10), IIF([x].[StringValueNullable] IS NULL, 3, 1)) = 2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	IIF([x_with_not].[StringValueNullable] IS NOT NULL, IIF([x_with_not].[StringValueNullable] = '2', 2, 10), IIF([x_with_not].[StringValueNullable] IS NULL, 3, 1)) <> 2

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	2 = IIF([swap].[StringValueNullable] IS NOT NULL, IIF([swap].[StringValueNullable] = '2', 2, 10), IIF([swap].[StringValueNullable] IS NULL, 3, 1))

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	2 <> IIF([swap_with_not].[StringValueNullable] IS NOT NULL, IIF([swap_with_not].[StringValueNullable] = '2', 2, 10), IIF([swap_with_not].[StringValueNullable] IS NULL, 3, 1))

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] = 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] < 4 OR [x].[IntVlaue] <> 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] < 4 OR [x_with_not].[IntVlaue] <> 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[IntVlaue] < 4 OR [swap].[IntVlaue] <> 0 AND [swap].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	NOT ([swap_with_not].[IntVlaue] < 4 OR [swap_with_not].[IntVlaue] <> 0 AND [swap_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] < 4 OR [x].[IntVlaue] > 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] < 4 OR [x_with_not].[IntVlaue] > 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] < 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] < 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] < 4 OR [x].[IntVlaue] >= 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] < 4 OR [x_with_not].[IntVlaue] >= 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] <= 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] <= 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] = 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] = 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[IntVlaue] = 0 AND [swap].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	NOT ([swap_with_not].[IntVlaue] = 0 AND [swap_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] <> 0 AND [x].[IntVlaue] >= 4 OR [x].[IntVlaue] < 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] <> 0 AND [x_with_not].[IntVlaue] >= 4 OR [x_with_not].[IntVlaue] < 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap].[Id],
	[swap].[IntVlaue],
	[swap].[IntVlaueNullable],
	[swap].[BoolValue],
	[swap].[BoolValueNullable],
	[swap].[StringValue],
	[swap].[StringValueNullable]
FROM
	[OptimizationData] [swap]
WHERE
	[swap].[IntVlaue] <> 0 AND [swap].[IntVlaue] >= 4 OR
	[swap].[IntVlaue] < 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[swap_with_not].[Id],
	[swap_with_not].[IntVlaue],
	[swap_with_not].[IntVlaueNullable],
	[swap_with_not].[BoolValue],
	[swap_with_not].[BoolValueNullable],
	[swap_with_not].[StringValue],
	[swap_with_not].[StringValueNullable]
FROM
	[OptimizationData] [swap_with_not]
WHERE
	NOT ([swap_with_not].[IntVlaue] <> 0 AND [swap_with_not].[IntVlaue] >= 4 OR [swap_with_not].[IntVlaue] < 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] > 0 AND [x].[IntVlaue] >= 4 OR [x].[IntVlaue] < 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] > 0 AND [x_with_not].[IntVlaue] >= 4 OR [x_with_not].[IntVlaue] < 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] < 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] < 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] >= 0 AND [x].[IntVlaue] >= 4 OR [x].[IntVlaue] < 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] >= 0 AND [x_with_not].[IntVlaue] >= 4 OR [x_with_not].[IntVlaue] < 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[IntVlaue],
	[x].[IntVlaueNullable],
	[x].[BoolValue],
	[x].[BoolValueNullable],
	[x].[StringValue],
	[x].[StringValueNullable]
FROM
	[OptimizationData] [x]
WHERE
	[x].[IntVlaue] <= 0 AND [x].[IntVlaue] >= 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x_with_not].[Id],
	[x_with_not].[IntVlaue],
	[x_with_not].[IntVlaueNullable],
	[x_with_not].[BoolValue],
	[x_with_not].[BoolValueNullable],
	[x_with_not].[StringValue],
	[x_with_not].[StringValueNullable]
FROM
	[OptimizationData] [x_with_not]
WHERE
	NOT ([x_with_not].[IntVlaue] <= 0 AND [x_with_not].[IntVlaue] >= 4)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[IntVlaue],
	[t1].[IntVlaueNullable],
	[t1].[BoolValue],
	[t1].[BoolValueNullable],
	[t1].[StringValue],
	[t1].[StringValueNullable]
FROM
	[OptimizationData] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [OptimizationData]

