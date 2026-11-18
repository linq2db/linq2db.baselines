-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @TargetName UniVarChar(12) -- String
SET     @TargetName = 'bda.Requests'
DECLARE @BdaValue UniVarChar(9) -- String
SET     @BdaValue = 'Bda value'

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

-- Sybase.Managed Sybase
SELECT
	[p].[Id],
	[p].[TargetName],
	[p].[BdaValue]
FROM
	[Task] [p]

-- Sybase.Managed Sybase
SELECT
	[p].[BdaValue]
FROM
	[Task] [p]

