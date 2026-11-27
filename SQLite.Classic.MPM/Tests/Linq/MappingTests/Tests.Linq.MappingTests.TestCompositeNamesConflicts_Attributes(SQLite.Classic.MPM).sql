-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Customer_Name NVarChar(5) -- String
SET     @Customer_Name = 'name1'
DECLARE @CustomerOther_Name NVarChar(5) -- String
SET     @CustomerOther_Name = 'name2'

INSERT INTO [CompositeNamesAttributeTable]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[child1_name],
	[t1].[child2_name]
FROM
	[CompositeNamesAttributeTable] [t1]
LIMIT 2

