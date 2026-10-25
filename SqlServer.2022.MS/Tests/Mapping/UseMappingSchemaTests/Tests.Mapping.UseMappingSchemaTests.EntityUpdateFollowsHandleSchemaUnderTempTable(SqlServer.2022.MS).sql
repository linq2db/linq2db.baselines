-- SqlServer.2022.MS SqlServer.2022
CREATE TABLE [tempdb]..[#SourceSchemaRowTemp]
(
	[Id]    Int            NOT NULL,
	[Value] Int            NOT NULL,
	[Name]  NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([Id], [Value])
)

INSERT BULK [tempdb]..[#SourceSchemaRowTemp](Id, Value, Name)

-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022
DROP TABLE IF EXISTS [tempdb]..[#SourceSchemaRowTemp]

-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]

