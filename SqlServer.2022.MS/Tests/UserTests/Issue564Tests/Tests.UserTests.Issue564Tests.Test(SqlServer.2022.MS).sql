BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Parent564]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Parent564]', N'U') IS NULL)
	CREATE TABLE [Parent564]
	(
		[Id]          Int             NOT NULL IDENTITY,
		[Type]        NVarChar(4000)      NULL,
		[StringValue] NVarChar(20)        NULL,
		[IntValue]    Int                 NULL,

		CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'Child564A'
DECLARE @StringValue NVarChar(20) -- String
SET     @StringValue = N'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Type NVarChar(4000) -- String
SET     @Type = N'Child564B'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Parent564]

