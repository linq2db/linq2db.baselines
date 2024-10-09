BeforeExecute
-- SqlServer.2019
DECLARE @value1 Int -- Int32
SET     @value1 = NULL
DECLARE @value2 Int -- Int32
SET     @value2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1 as Value1, @value2 as Value2 /*TestQueryCaching_ByParameter_Interpolation2*/
	) [t1]

BeforeExecute
-- SqlServer.2019
DECLARE @value1 Int -- Int32
SET     @value1 = 1
DECLARE @value2 Int -- Int32
SET     @value2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1 as Value1, @value2 as Value2 /*TestQueryCaching_ByParameter_Interpolation2*/
	) [t1]

BeforeExecute
-- SqlServer.2019
DECLARE @value1 Int -- Int32
SET     @value1 = NULL
DECLARE @value2 Int -- Int32
SET     @value2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1 as Value1, @value2 as Value2 /*TestQueryCaching_ByParameter_Interpolation2*/
	) [t1]

BeforeExecute
-- SqlServer.2019
DECLARE @value1 Int -- Int32
SET     @value1 = 2
DECLARE @value2 Int -- Int32
SET     @value2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1 as Value1, @value2 as Value2 /*TestQueryCaching_ByParameter_Interpolation2*/
	) [t1]

BeforeExecute
-- SqlServer.2019
DECLARE @value1 Int -- Int32
SET     @value1 = 3
DECLARE @value2 Int -- Int32
SET     @value2 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1 as Value1, @value2 as Value2 /*TestQueryCaching_ByParameter_Interpolation2*/
	) [t1]

