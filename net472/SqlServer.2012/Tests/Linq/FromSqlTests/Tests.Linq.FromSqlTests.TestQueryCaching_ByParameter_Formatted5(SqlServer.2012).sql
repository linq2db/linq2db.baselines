BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Variant -- Object
SET     @p_1 = NULL
DECLARE @p_2 Variant -- Object
SET     @p_2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p_1 as Value1, @p_2 as Value2 /*TestQueryCaching_ByParameter_Formatted5*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p_1 as Value1, @p_2 as Value2 /*TestQueryCaching_ByParameter_Formatted5*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Variant -- Object
SET     @p_1 = NULL
DECLARE @p_2 Int -- Int32
SET     @p_2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p_1 as Value1, @p_2 as Value2 /*TestQueryCaching_ByParameter_Formatted5*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2
DECLARE @p_2 Variant -- Object
SET     @p_2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p_1 as Value1, @p_2 as Value2 /*TestQueryCaching_ByParameter_Formatted5*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3
DECLARE @p_2 Int -- Int32
SET     @p_2 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p_1 as Value1, @p_2 as Value2 /*TestQueryCaching_ByParameter_Formatted5*/
	) [t1]

