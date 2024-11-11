BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserStruct]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [UserStruct]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Residence_City VarWChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarWChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer -- Int32
SET     @Residence_Building = 13

INSERT INTO [UserStruct]
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
-- Access.Ace.OleDb AccessOleDb
DECLARE @City VarWChar(10) -- String
SET     @City = 'Springwood'
DECLARE @Street VarWChar(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building Integer -- Int32
SET     @Building = 13

SELECT TOP 2
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = @City AND [u].[street] = @Street AND [u].[building_number] = @Building

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserStruct]

