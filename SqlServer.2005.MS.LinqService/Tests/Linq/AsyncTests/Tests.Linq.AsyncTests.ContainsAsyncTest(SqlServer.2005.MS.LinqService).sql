BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN @ID IN (
			SELECT
				[t1].[PersonID]
			FROM
				[Person] [t1]
		)
			THEN 1
		ELSE 0
	END

