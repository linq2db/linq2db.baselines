BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= @n
	), 1, 0)

