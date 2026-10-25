-- SqlCe
CREATE TABLE [SourceSchemaRowTemp]
(
	[Id]    Int           NOT NULL,
	[Value] Int           NOT NULL,
	[Name]  NVarChar(255)     NULL,

	CONSTRAINT [PK_SourceSchemaRowTemp] PRIMARY KEY ([Id], [Value])
)

-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow]
SET
	[Value] = @Value,
	[Name] = @Name
WHERE
	[SourceSchemaRow].[Id] = @Id

-- SqlCe
DROP TABLE [SourceSchemaRowTemp]

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

