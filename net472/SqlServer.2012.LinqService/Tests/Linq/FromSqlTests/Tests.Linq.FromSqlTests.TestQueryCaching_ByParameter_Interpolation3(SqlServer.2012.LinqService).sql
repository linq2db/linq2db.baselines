﻿BeforeExecute
-- SqlServer.2012
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value_1 as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 Int -- Int32
SET     @value_1 = 1

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value_1 as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 Int -- Int32
SET     @value_1 = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value_1 as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 Int -- Int32
SET     @value_1 = 2

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value_1 as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.2012
DECLARE @value_1 Int -- Int32
SET     @value_1 = 3

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value_1 as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

