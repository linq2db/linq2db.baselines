﻿BeforeExecute
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
	[e].[Code],
	[e].[Id],
	[e].[Age],
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> 'Child' OR [e].[Code] IS NULL

