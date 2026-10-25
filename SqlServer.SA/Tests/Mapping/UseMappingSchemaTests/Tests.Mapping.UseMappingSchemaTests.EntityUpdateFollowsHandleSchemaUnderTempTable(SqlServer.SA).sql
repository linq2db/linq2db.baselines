-- SqlServer.SA SqlServer.2019
CREATE TABLE [SourceSchemaRowTemp]
(
	[Id]    Int            NOT NULL,
	[Value] Int            NOT NULL,
	[Name]  NVarChar(4000)     NULL,

	CONSTRAINT [PK_SourceSchemaRowTemp] PRIMARY KEY CLUSTERED ([Id], [Value])
)

INSERT BULK [SourceSchemaRowTemp](Id, Value, Name)

-- SqlServer.SA SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'b'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SourceSchemaRow]
SET
	[Value] = @Value,
	[Name] = @Name
WHERE
	[SourceSchemaRow].[Id] = @Id

-- SqlServer.SA SqlServer.2019
DROP TABLE IF EXISTS [SourceSchemaRowTemp]

-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

