-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = @p
		)
			THEN 1
		ELSE 0
	END

-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = @p
		)
			THEN 1
		ELSE 0
	END

