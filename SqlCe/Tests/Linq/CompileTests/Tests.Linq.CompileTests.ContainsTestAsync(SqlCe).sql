-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN @p IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END as [c1]

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN @p IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END as [c1]

