BeforeExecute
-- SqlServer.2012

CREATE TABLE [Parent564]
(
	[Id]          Int             NOT NULL IDENTITY,
	[Type]        NVarChar(4000)      NULL,
	[StringValue] NVarChar(20)        NULL,
	[IntValue]    Int                 NULL,

	CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2012
DECLARE @Type_1 NVarChar(4000) -- String
SET     @Type_1 = N'Child564A'
DECLARE @StringValue NVarChar(20) -- String
SET     @StringValue = N'SomeValue'

INSERT INTO [Parent564]
(
	[Type],
	[StringValue]
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- SqlServer.2012
DECLARE @Type_1 NVarChar(4000) -- String
SET     @Type_1 = N'Child564B'
DECLARE @IntValue Int -- Int32
SET     @IntValue = 911

INSERT INTO [Parent564]
(
	[Type],
	[IntValue]
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- SqlServer.2012

SELECT 
	Count(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Parent564]

