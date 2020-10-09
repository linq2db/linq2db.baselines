BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Parent564]
(
	[Id]          Int           IDENTITY NOT NULL,
	[Type]        NVarChar(255)              NULL,
	[StringValue] NVarChar(20)               NULL,
	[IntValue]    Int                        NULL,

	CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Type_1 UniVarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue UniVarChar(9) -- String
SET     @StringValue = 'SomeValue'

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
-- Sybase.Managed Sybase
DECLARE @Type_1 UniVarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT 
	Count(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Parent564]

