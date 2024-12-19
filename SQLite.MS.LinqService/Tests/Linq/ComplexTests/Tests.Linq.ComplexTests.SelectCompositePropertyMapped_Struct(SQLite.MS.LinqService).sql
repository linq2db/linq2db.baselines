BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserStruct]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [UserStruct]
(
	[city]            NVarChar(255)     NULL,
	[user_name]       NVarChar(255)     NULL,
	[street]          NVarChar(255)     NULL,
	[building_number] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Residence_City NVarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street NVarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building  -- Int32
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
-- SQLite.MS SQLite

SELECT DISTINCT
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [UserStruct]

