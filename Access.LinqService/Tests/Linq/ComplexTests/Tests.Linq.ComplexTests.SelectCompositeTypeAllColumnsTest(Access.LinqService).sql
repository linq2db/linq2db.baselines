BeforeExecute
-- Access AccessOleDb

DROP TABLE [User]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [User]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] Int           NOT NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT
	[t1].[user_name],
	[t1].[city],
	[t1].[street],
	[t1].[building_number]
FROM
	[User] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [User]

