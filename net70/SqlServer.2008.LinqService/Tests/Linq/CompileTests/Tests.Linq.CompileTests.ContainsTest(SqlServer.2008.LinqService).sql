BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SqlServer.2008
DECLARE @p_1 Int -- Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

