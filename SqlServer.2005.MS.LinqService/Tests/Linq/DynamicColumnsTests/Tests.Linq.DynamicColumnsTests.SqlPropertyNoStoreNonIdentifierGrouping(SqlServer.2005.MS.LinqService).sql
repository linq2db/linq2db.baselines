BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NULL)
	CREATE TABLE [DynamicTable]
	(
		[ID]             Int  NOT NULL IDENTITY,
		[Not Identifier] Int  NOT NULL,
		[Some Value]     Int  NOT NULL,

		CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Int -- Int32
SET     @Value = 5

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Int -- Int32
SET     @Value = 5

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[g_1].[Not Identifier],
	COUNT(*),
	SUM([g_1].[Some Value])
FROM
	[DynamicTable] [g_1]
GROUP BY
	[g_1].[Not Identifier]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

