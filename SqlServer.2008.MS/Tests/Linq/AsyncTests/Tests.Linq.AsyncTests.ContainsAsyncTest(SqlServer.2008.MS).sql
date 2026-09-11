-- SqlServer.2008.MS SqlServer.2008
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

