-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Customer_Name NVarChar(4000) -- String
SET     @Customer_Name = N'name1'
DECLARE @CustomerOther_Name NVarChar(4000) -- String
SET     @CustomerOther_Name = N'name2'

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

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[child1_name],
	[t1].[child2_name]
FROM
	[Issue5266TableFluent] [t1]

