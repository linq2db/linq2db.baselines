-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [LoadAsTableUser]
(
	[Id]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @UserId Int -- Int32
SET     @UserId = 10
DECLARE @Age Int -- Int32
SET     @Age = 18

INSERT INTO [LoadAsTableUserDetails]
(
	[UserId],
	[Age]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[LoadAsTableUser] [t1]
	) > 0

