BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [User]

