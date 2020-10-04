BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Variant -- Object
SET     @p1 = NULL
DECLARE @p2 Variant -- Object
SET     @p2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p1 as Value1, @p2 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 1
DECLARE @p2 Int -- Int32
SET     @p2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p1 as Value1, @p2 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Variant -- Object
SET     @p1 = NULL
DECLARE @p2 Int -- Int32
SET     @p2 = 2

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p1 as Value1, @p2 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 2
DECLARE @p2 Variant -- Object
SET     @p2 = NULL

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p1 as Value1, @p2 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 3
DECLARE @p2 Int -- Int32
SET     @p2 = 3

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT @p1 as Value1, @p2 as Value2 /*TestQueryCaching_ByParameter_Formatted52*/
	) [t1]

