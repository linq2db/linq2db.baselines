BeforeExecute
-- SqlServer.2005
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <= @n
		)
			THEN 1
		ELSE 0
	END

