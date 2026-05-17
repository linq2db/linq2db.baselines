-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Age Int -- Int32
SET     @Age = 14

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
SET     @Age = 15

INSERT INTO [PR_1598_Insert_Table]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[PR_1598_Insert_Table] [t]
WHERE
	[t].[Id] = 2

