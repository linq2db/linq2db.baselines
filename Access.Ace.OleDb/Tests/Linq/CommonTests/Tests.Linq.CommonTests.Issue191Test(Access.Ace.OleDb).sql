BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [User]
(
	[FirstName] NVarChar(255)     NULL,
	[Status]    Int               NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

