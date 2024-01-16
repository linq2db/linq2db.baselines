BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 1

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 2

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 3

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @value as Value1 /*TestQueryCaching_ByParameter_Interpolation3*/
	) [t1]

