BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [User]
(
	[FirstName] NVarChar(255)     NULL,
	[Status]    Int               NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [User]

