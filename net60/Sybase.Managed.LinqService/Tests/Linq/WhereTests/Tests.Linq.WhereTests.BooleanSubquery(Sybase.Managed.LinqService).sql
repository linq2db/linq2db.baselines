BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NOT NULL)
	DROP TABLE [WhereWithBool]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NULL)
	EXECUTE('
		CREATE TABLE [WhereWithBool]
		(
			[Id]        Int NOT NULL,
			[BoolValue] Bit NOT NULL,

			CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	(
		SELECT
			[x].[BoolValue]
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1
	) = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WhereWithBool') IS NOT NULL)
	DROP TABLE [WhereWithBool]

