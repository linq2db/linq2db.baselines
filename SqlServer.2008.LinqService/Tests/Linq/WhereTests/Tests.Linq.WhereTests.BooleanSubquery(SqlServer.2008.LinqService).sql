BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[WhereWithBool]', N'U') IS NOT NULL)
	DROP TABLE [WhereWithBool]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[WhereWithBool]', N'U') IS NULL)
	CREATE TABLE [WhereWithBool]
	(
		[Id]        Int NOT NULL,
		[BoolValue] Bit NOT NULL,

		CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = 1 AND [x].[Id] = 1

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[WhereWithBool]', N'U') IS NOT NULL)
	DROP TABLE [WhereWithBool]

