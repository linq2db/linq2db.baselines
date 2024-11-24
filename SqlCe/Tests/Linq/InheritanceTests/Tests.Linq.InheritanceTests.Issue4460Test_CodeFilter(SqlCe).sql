BeforeExecute
-- SqlCe

DROP TABLE [Base]

BeforeExecute
-- SqlCe

CREATE TABLE [Base]
(
	[Code] NVarChar(255)     NULL,
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  Int               NULL
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name]
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [e].[Code] = 'Child2' THEN 1
		ELSE 0
	END as [c1],
	[e].[Code],
	[e].[Id],
	[e].[Age],
	CASE
		WHEN [e].[Code] = 'Child' THEN 1
		ELSE 0
	END as [c2],
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> 'Child' OR [e].[Code] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [Base]

