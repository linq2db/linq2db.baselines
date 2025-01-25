BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Parent564') IS NOT NULL)
	DROP TABLE [Parent564]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Parent564') IS NULL)
	EXECUTE('
		CREATE TABLE [Parent564]
		(
			[Id]          Int           IDENTITY NOT NULL,
			[Type]        NVarChar(255)              NULL,
			[StringValue] NVarChar(20)               NULL,
			[IntValue]    Int                        NULL,

			CONSTRAINT [PK_Parent564] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Type UniVarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue UniVarChar(9) -- String
SET     @StringValue = 'SomeValue'

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
-- Sybase.Managed Sybase
DECLARE @Type UniVarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Parent564] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Parent564') IS NOT NULL)
	DROP TABLE [Parent564]

