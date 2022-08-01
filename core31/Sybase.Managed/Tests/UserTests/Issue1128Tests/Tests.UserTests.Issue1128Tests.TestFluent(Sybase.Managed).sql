BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AttributeBase') IS NOT NULL)
	DROP TABLE [AttributeBase]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AttributeBase') IS NULL)
	EXECUTE('
		CREATE TABLE [AttributeBase]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_AttributeBase] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [AttributeBase]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AttributeBase') IS NOT NULL)
	DROP TABLE [AttributeBase]

