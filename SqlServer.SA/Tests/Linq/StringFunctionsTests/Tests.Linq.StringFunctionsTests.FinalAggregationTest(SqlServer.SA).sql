﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	STRING_AGG([t].[Value1], N' -> ')
FROM
	[SampleClass] [t]

