BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [User]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Residence_City NVarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street NVarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building  -- Int32
SET     @Residence_Building = 13

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @City NVarChar(10) -- String
SET     @City = 'Springwood'
DECLARE @Street NVarChar(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building  -- Int32
SET     @Building = 13

SELECT TOP 2
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]
WHERE
	[u].[city] = ? AND [u].[street] = ? AND [u].[building_number] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [User]

