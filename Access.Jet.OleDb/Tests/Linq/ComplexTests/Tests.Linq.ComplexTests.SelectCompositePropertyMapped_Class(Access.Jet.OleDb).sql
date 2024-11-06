BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Residence_City VarWChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarWChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer -- Int32
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
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT TOP 2
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [User]

