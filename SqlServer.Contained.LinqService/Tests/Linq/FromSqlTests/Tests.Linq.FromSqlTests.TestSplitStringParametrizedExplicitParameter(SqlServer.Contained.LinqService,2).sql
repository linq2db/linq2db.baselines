﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'

SELECT
	[x].[Value]
FROM
	STRING_SPLIT(@p,',') [x]

