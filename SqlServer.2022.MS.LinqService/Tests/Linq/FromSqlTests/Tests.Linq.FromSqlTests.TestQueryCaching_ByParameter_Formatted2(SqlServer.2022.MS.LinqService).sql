﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = NULL
DECLARE @p_1 Int -- Int32
SET     @p_1 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = NULL
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p as Value1, @p_1 as Value2 /*TestQueryCaching_ByParameter_Formatted2*/
	) [t1]

