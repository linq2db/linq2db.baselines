BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [OptimizationData]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[OptimizationData]', N'U') IS NULL)
	CREATE TABLE [OptimizationData]
	(
		[Id]                  Int            NOT NULL,
		[IntVlaue]            Int            NOT NULL,
		[IntVlaueNullable]    Int                NULL,
		[BoolValue]           Bit            NOT NULL,
		[BoolValueNullable]   Bit                NULL,
		[StringValue]         NVarChar(4000)     NULL,
		[StringValueNullable] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 1
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'1'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'1'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 2
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'0'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'0'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 4
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = NULL
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'1'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'1'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 0
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 1
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'0'
DECLARE @StringValueNullable NVarChar(4000) -- String
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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 3
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 1
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'1'
DECLARE @StringValueNullable NVarChar(4000) -- String
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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 0
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 0
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'0'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'0'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 1
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 0
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'1'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'1'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @IntVlaue Int -- Int32
SET     @IntVlaue = 3
DECLARE @IntVlaueNullable Int -- Int32
SET     @IntVlaueNullable = 2
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @BoolValueNullable Bit -- Boolean
SET     @BoolValueNullable = 1
DECLARE @StringValue NVarChar(4000) -- String
SET     @StringValue = N'0'
DECLARE @StringValueNullable NVarChar(4000) -- String
SET     @StringValueNullable = N'0'

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
	@Id,
	@IntVlaue,
	@IntVlaueNullable,
	@BoolValue,
	@BoolValueNullable,
	@StringValue,
	@StringValueNullable
)

BeforeExecute
-- SqlServer.2022

/* x => x.IntVlaue == 1 ? 3 : 4 == 3 */
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
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.IntVlaue == 1 ? 3 : 4 == 3) */
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
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => 3 == swap.IntVlaue == 1 ? 3 : 4 */
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
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !(3 == swap_with_not.IntVlaue == 1 ? 3 : 4) */
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
-- SqlServer.2022

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
-- SqlServer.2022

/* x => x.IntVlaue == 1 ? null : (bool?)False == (bool?)True */
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
	(IIF([x].[IntVlaue] = 1, NULL, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)False == (bool?)True) */
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
	((IIF([x_with_not].[IntVlaue] = 1, NULL, 0)) = 0 OR (IIF([x_with_not].[IntVlaue] = 1, NULL, 0)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)False */
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
	(IIF([swap].[IntVlaue] = 1, NULL, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)False) */
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
	((IIF([swap_with_not].[IntVlaue] = 1, NULL, 0)) = 0 OR (IIF([swap_with_not].[IntVlaue] = 1, NULL, 0)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x => x.IntVlaue == 1 ? null : (bool?)True == (bool?)True */
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
	(IIF([x].[IntVlaue] = 1, NULL, 1)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.IntVlaue == 1 ? null : (bool?)True == (bool?)True) */
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
	((IIF([x_with_not].[IntVlaue] = 1, NULL, 1)) = 0 OR (IIF([x_with_not].[IntVlaue] = 1, NULL, 1)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => (bool?)True == swap.IntVlaue == 1 ? null : (bool?)True */
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
	(IIF([swap].[IntVlaue] = 1, NULL, 1)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !((bool?)True == swap_with_not.IntVlaue == 1 ? null : (bool?)True) */
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
	((IIF([swap_with_not].[IntVlaue] = 1, NULL, 1)) = 0 OR (IIF([swap_with_not].[IntVlaue] = 1, NULL, 1)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x => x.BoolValue ? True : False == True */
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
	(IIF([x].[BoolValue] = 1, 1, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.BoolValue ? True : False == True) */
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
	(IIF([x_with_not].[BoolValue] = 1, 1, 0)) = 0

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => True == swap.BoolValue ? True : False */
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
	(IIF([swap].[BoolValue] = 1, 1, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !(True == swap_with_not.BoolValue ? True : False) */
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
	(IIF([swap_with_not].[BoolValue] = 1, 1, 0)) = 0

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x => x.BoolValue == True ? null : (bool?)True == (bool?)True */
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
	(IIF([x].[BoolValue] = 1, NULL, 1)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.BoolValue == True ? null : (bool?)True == (bool?)True) */
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
	((IIF([x_with_not].[BoolValue] = 1, NULL, 1)) = 0 OR (IIF([x_with_not].[BoolValue] = 1, NULL, 1)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => (bool?)True == swap.BoolValue == True ? null : (bool?)True */
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
	(IIF([swap].[BoolValue] = 1, NULL, 1)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !((bool?)True == swap_with_not.BoolValue == True ? null : (bool?)True) */
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
	((IIF([swap_with_not].[BoolValue] = 1, NULL, 1)) = 0 OR (IIF([swap_with_not].[BoolValue] = 1, NULL, 1)) IS NULL)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x => x.BoolValue == True ? True : False == True */
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
	(IIF([x].[BoolValue] = 1, 1, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* x_with_not => !(x_with_not.BoolValue == True ? True : False == True) */
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
	(IIF([x_with_not].[BoolValue] = 1, 1, 0)) = 0

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap => True == swap.BoolValue == True ? True : False */
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
	(IIF([swap].[BoolValue] = 1, 1, 0)) = 1

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

/* swap_with_not => !(True == swap_with_not.BoolValue == True ? True : False) */
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
	(IIF([swap_with_not].[BoolValue] = 1, 1, 0)) = 0

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [OptimizationData]

