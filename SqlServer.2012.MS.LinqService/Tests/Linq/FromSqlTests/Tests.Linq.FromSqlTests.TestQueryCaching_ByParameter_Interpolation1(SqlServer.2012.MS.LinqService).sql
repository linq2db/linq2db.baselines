﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @p as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @p as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @p as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @p as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) [t1]

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	[t1].[Value1]
FROM
	(
		SELECT @p as Value1 /*TestQueryCaching_ByParameter_Interpolation1*/
	) [t1]

