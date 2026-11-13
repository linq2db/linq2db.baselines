-- SqlServer.2016
DECLARE @token NVarChar(4000) -- String
SET     @token = N'Bx'

SELECT
	@token
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

