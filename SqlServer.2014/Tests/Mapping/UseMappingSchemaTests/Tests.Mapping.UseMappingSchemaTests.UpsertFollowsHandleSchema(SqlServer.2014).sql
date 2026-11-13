-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'b'

MERGE INTO [SourceSchemaRow] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Value] = @Value,
		[Name] = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		[Id],
		[Value],
		[Name]
	)
	VALUES
	(
		@Id,
		@Value,
		@Name
	);

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Name]
FROM
	[SourceSchemaRow] [t1]
ORDER BY
	[t1].[Id]

