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
DECLARE @Residence_Building Int -- Int32
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

SELECT
	[t1].[user_name],
	[t1].[city],
	[t1].[street],
	[t1].[building_number]
FROM
	[User] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [User]

