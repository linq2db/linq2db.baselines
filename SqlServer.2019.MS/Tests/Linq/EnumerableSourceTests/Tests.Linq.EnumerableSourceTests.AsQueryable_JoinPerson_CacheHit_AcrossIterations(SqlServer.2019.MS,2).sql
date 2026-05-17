-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Int -- Int32
SET     @Id_2 = 22

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(@Id), (@Id_1), (@Id_2)
		) [r]([Id]) ON [p].[PersonID] = [r].[Id]

