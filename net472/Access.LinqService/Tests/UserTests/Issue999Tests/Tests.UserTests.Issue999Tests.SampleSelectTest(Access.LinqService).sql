BeforeExecute
-- Access AccessOleDb

CREATE TABLE [User]
(
	[city]      NVarChar(255)     NULL,
	[user_name] NVarChar(255)     NULL,
	[street]    NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- Access AccessOleDb

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [User]

