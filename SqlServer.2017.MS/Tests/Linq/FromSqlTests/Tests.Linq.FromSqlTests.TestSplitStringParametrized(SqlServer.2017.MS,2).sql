BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'

SELECT
	[x].[Value]
FROM
	STRING_SPLIT(@p,',') [x]

