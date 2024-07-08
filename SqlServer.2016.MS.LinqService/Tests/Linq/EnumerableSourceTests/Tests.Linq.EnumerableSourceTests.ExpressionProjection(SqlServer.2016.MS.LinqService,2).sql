BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[FirstName],
	[n].[PersonID]
FROM
	[Person] [t1]
		INNER JOIN (VALUES
			(N'Janet',@ID), (N'Doe',@ID_1)
		) [n]([FirstName], [PersonID]) ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]

