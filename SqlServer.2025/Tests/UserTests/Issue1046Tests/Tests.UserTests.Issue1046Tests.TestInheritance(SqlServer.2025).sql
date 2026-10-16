-- SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(4000) -- String
SET     @TargetName = N'bda.Requests'
DECLARE @BdaValue NVarChar(4000) -- String
SET     @BdaValue = N'Bda value'

INSERT INTO [Task]
(
	[Id],
	[TargetName],
	[BdaValue]
)
VALUES
(
	@Id,
	@TargetName,
	@BdaValue
)

-- SqlServer.2025
SELECT
	[p].[Id],
	[p].[TargetName],
	[p].[BdaValue]
FROM
	[Task] [p]

-- SqlServer.2025
SELECT
	[p].[BdaValue]
FROM
	[Task] [p]

