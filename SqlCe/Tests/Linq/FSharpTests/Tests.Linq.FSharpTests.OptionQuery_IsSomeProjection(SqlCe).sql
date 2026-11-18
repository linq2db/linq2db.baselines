-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'a'
DECLARE @Age Int -- Int32
SET     @Age = 5

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = NULL

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Age Int -- Int32
SET     @Age = 7

INSERT INTO [OptRow]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- SqlCe
SELECT
	CASE
		WHEN [x].[Name] IS NOT NULL THEN 1
		ELSE 0
	END
FROM
	[OptRow] [x]
ORDER BY
	[x].[Id]

