BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jane'
DECLARE @IsMale Bit -- Boolean
SET     @IsMale = 0

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[IsMale]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[IsMale],
	[e].[Age]
FROM
	[Base] [e]
WHERE
	CASE
		WHEN [e].[Code] = N'Child2' OR [e].[Code] = N'Child' OR [e].[Code] = N'BaseChild'
			THEN CASE
			WHEN [e].[Id] <> 0 THEN 1
			ELSE 0
		END
		WHEN [e].[Id] = 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	[e].[Id]

