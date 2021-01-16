BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NULL)
	CREATE TABLE [DynamicTable]
	(
		[ID]             Int  NOT NULL IDENTITY,
		[Not Identifier] Int  NOT NULL,
		[Some Value]     Int  NOT NULL,

		CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @NotIdentifier Int -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value_1
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DynamicTable]', N'U') IS NOT NULL)
	DROP TABLE [DynamicTable]

