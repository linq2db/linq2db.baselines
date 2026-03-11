-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [UserIssue3128]
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

INSERT INTO [UserDetailsIssue3128]
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
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[UserIssue3128] [t1]
		LEFT JOIN [UserDetailsIssue3128] [a_Details] ON ([t1].[Id] = [a_Details].[UserId])

