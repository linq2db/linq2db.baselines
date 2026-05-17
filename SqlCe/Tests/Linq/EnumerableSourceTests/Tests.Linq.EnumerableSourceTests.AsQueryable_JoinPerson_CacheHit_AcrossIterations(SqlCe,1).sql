-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 11

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT @Id AS [Id]
			UNION ALL
			SELECT @Id_1 AS [Id]) [r] ON [p].[PersonID] = [r].[Id]

