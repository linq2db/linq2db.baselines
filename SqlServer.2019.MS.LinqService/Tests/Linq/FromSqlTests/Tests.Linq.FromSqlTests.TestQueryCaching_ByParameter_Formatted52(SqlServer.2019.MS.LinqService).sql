﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT NULL as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT NULL as Value1, @p as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

