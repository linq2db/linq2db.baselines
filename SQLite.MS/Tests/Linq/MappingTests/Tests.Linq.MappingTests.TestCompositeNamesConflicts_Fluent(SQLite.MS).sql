-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Customer_Name NVarChar(5) -- String
SET     @Customer_Name = 'name1'
DECLARE @CustomerOther_Name NVarChar(5) -- String
SET     @CustomerOther_Name = 'name2'

INSERT INTO [Issue5266TableFluent]
(
	[Id],
	[child1_name],
	[child2_name]
)
VALUES
(
	@Id,
	@Customer_Name,
	@CustomerOther_Name
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[child1_name],
	[t1].[child2_name]
FROM
	[Issue5266TableFluent] [t1]
LIMIT 2

