BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [User]
(
	[FirstName] NVarChar(255)     NULL,
	[Status]    Int               NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[user_1].[FirstName],
	[user_1].[Status]
FROM
	[User] [user_1]
WHERE
	[user_1].[Status] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [User]

