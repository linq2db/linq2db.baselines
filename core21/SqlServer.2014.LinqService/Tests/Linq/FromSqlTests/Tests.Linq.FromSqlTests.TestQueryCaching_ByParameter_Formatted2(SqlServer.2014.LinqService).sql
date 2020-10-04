BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @value1_1 Int -- Int32
SET     @value1_1 = NULL
DECLARE @value2_1 Int -- Int32
SET     @value2_1 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1_1 as Value1, @value2_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @value1_1 Int -- Int32
SET     @value1_1 = 1
DECLARE @value2_1 Int -- Int32
SET     @value2_1 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1_1 as Value1, @value2_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @value1_1 Int -- Int32
SET     @value1_1 = NULL
DECLARE @value2_1 Int -- Int32
SET     @value2_1 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1_1 as Value1, @value2_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @value1_1 Int -- Int32
SET     @value1_1 = 2
DECLARE @value2_1 Int -- Int32
SET     @value2_1 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1_1 as Value1, @value2_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @value1_1 Int -- Int32
SET     @value1_1 = 3
DECLARE @value2_1 Int -- Int32
SET     @value2_1 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @value1_1 as Value1, @value2_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

