﻿BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT NULL as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Interpolation5*/
	) [t1]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT 1 as Value1, 2 as Value2 /*TestQueryCaching_ByParameter_Interpolation5*/
	) [t1]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT NULL as Value1, 2 as Value2 /*TestQueryCaching_ByParameter_Interpolation5*/
	) [t1]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT 2 as Value1, NULL as Value2 /*TestQueryCaching_ByParameter_Interpolation5*/
	) [t1]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT 3 as Value1, 3 as Value2 /*TestQueryCaching_ByParameter_Interpolation5*/
	) [t1]

