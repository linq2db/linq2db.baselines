﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[OptimizationData]', N'U') IS NOT NULL)
	DROP TABLE [OptimizationData]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
(1,1,0,1,1,N'1',N'1'),
(2,2,1,0,NULL,N'0',N'0'),
(3,4,4,0,NULL,N'1',N'1'),
(4,0,1,1,1,N'0',NULL),
(5,1,3,1,1,N'1',NULL),
(6,3,0,0,0,N'0',N'0'),
(7,1,4,0,0,N'1',N'1'),
(8,3,2,1,1,N'0',N'0')

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	1 = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	1 = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x].[IntVlaue] <> 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x_with_not].[IntVlaue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap].[IntVlaue] <> 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap_with_not].[IntVlaue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x_with_not].[BoolValue] = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap_with_not].[BoolValue] = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x].[BoolValue] = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x_with_not].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap].[BoolValue] = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap_with_not].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[x_with_not].[BoolValue] = 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap].[BoolValue] = 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

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
	[swap_with_not].[BoolValue] <> 1

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 == 2 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 == 2) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 2 == swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 == 2 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 == 2) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 2 == swap.StringValueNullable == null ? 2 : swap.StringValueNullable != null ? 1 : 3 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(2 == swap_with_not.StringValueNullable == null ? 2 : swap_with_not.StringValueNullable != null ? 1 : 3) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 3 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 3) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 >= 1 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 >= 1) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 2 : x.StringValueNullable != null ? 1 : 3 > 1 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 2 : x_with_not.StringValueNullable != null ? 1 : 3 > 1) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable == null ? 1 : x.StringValueNullable != null ? 2 : 3 != 2 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable == null ? 1 : x_with_not.StringValueNullable != null ? 2 : 3 != 2) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 2 != swap.StringValueNullable == null ? 1 : swap.StringValueNullable != null ? 2 : 3 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(2 != swap_with_not.StringValueNullable == null ? 1 : swap_with_not.StringValueNullable != null ? 2 : 3) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.StringValueNullable != null ? x.StringValueNullable == "2" ? 2 : 10 : x.StringValueNullable == null ? 3 : 1 == 2 */
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
	CASE
		WHEN [x].[StringValueNullable] IS NOT NULL THEN CASE
			WHEN [x].[StringValueNullable] = N'2' THEN 2
			ELSE 10
		END
		WHEN [x].[StringValueNullable] IS NULL THEN 3
		ELSE 1
	END = 2

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.StringValueNullable != null ? x_with_not.StringValueNullable == "2" ? 2 : 10 : x_with_not.StringValueNullable == null ? 3 : 1 == 2) */
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
	CASE
		WHEN [x_with_not].[StringValueNullable] IS NOT NULL THEN CASE
			WHEN [x_with_not].[StringValueNullable] = N'2' THEN 2
			ELSE 10
		END
		WHEN [x_with_not].[StringValueNullable] IS NULL THEN 3
		ELSE 1
	END <> 2

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 2 == swap.StringValueNullable != null ? swap.StringValueNullable == "2" ? 2 : 10 : swap.StringValueNullable == null ? 3 : 1 */
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
	2 = CASE
		WHEN [swap].[StringValueNullable] IS NOT NULL THEN CASE
			WHEN [swap].[StringValueNullable] = N'2' THEN 2
			ELSE 10
		END
		WHEN [swap].[StringValueNullable] IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(2 == swap_with_not.StringValueNullable != null ? swap_with_not.StringValueNullable == "2" ? 2 : 10 : swap_with_not.StringValueNullable == null ? 3 : 1) */
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
	2 <> CASE
		WHEN [swap_with_not].[StringValueNullable] IS NOT NULL THEN CASE
			WHEN [swap_with_not].[StringValueNullable] = N'2' THEN 2
			ELSE 10
		END
		WHEN [swap_with_not].[StringValueNullable] IS NULL THEN 3
		ELSE 1
	END

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue == 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue != 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue != 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 0 != swap.IntVlaue < 4 ? 4 : swap.IntVlaue */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(0 != swap_with_not.IntVlaue < 4 ? 4 : swap_with_not.IntVlaue) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue > 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue > 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue < 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue < 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue >= 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue >= 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue < 4 ? 4 : x.IntVlaue <= 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue < 4 ? 4 : x_with_not.IntVlaue <= 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 == 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 == 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 0 == swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(0 == swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 != 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 != 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap => 0 != swap.IntVlaue >= 4 ? swap.IntVlaue : 4 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* swap_with_not => !(0 != swap_with_not.IntVlaue >= 4 ? swap_with_not.IntVlaue : 4) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 > 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 > 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 < 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 < 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 >= 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 >= 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x => x.IntVlaue >= 4 ? x.IntVlaue : 4 <= 0 */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

/* x_with_not => !(x_with_not.IntVlaue >= 4 ? x_with_not.IntVlaue : 4 <= 0) */
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
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[OptimizationData]', N'U') IS NOT NULL)
	DROP TABLE [OptimizationData]

