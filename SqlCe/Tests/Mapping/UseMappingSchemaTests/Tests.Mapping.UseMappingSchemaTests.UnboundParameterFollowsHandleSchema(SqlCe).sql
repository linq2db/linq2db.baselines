-- SqlCe
DECLARE @token NVarChar(2) -- String
SET     @token = 'Bx'

SELECT
	@token
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

