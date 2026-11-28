-- SqlServer.2019.MS SqlServer.2019
DECLARE @token NVarChar(4000) -- String
SET     @token = N'Bx'

SELECT
	@token
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

