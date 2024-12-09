BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 3

SELECT
	[n].[PersonID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (VALUES
			(@ID,N'Janet'), (@ID_1,N'Doe')
		) [n]([PersonID], [FirstName]) ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]

