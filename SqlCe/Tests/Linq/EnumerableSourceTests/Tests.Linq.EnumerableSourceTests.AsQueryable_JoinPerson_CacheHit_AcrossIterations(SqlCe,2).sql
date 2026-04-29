-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Int -- Int32
SET     @Id_2 = 22

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
			SELECT @Id_1 AS [Id]
			UNION ALL
			SELECT @Id_2 AS [Id]) [r] ON [p].[PersonID] = [r].[Id]

