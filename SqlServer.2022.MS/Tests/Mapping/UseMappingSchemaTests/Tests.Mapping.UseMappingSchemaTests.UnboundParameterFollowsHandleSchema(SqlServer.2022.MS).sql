-- SqlServer.2022.MS SqlServer.2022
DECLARE @token NVarChar(4000) -- String
SET     @token = N'Bx'

SELECT
	@token
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

