BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [User]

