BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT 
	CASE WHEN EXISTS(
		SELECT 
			*
		FROM
			[Person] [t1]
		WHERE
			[t1].[PersonID] = @ID
	) THEN 1 ELSE 0 END

