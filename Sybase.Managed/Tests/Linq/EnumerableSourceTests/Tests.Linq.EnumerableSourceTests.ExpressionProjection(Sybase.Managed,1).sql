BeforeExecute
--  Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	[n].[PersonID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT @ID AS [PersonID], 'Janet' AS [FirstName]
			UNION ALL
			SELECT @ID_1, 'Doe') [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]

