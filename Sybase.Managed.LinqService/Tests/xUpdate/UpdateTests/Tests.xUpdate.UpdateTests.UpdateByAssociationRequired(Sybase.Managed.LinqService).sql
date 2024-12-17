BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NOT NULL)
	DROP TABLE [MainTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NULL)
	EXECUTE('
		CREATE TABLE [MainTable]
		(
			[Id]    Int           NOT NULL,
			[Field] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field UniVarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field UniVarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field UniVarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NULL)
	EXECUTE('
		CREATE TABLE [AssociatedTable]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[MainTable] [t1]
				INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON [t1].[Id] = [a_AssociatedRequired].[Id]
				INNER JOIN [MainTable] [a_MainRequired] ON [a_AssociatedRequired].[Id] = [a_MainRequired].[Id]
		WHERE
			[t1].[Id] = @id AND [MainTable].[Id] = [a_MainRequired].[Id] AND
			([MainTable].[Field] = [a_MainRequired].[Field] OR [MainTable].[Field] IS NULL AND [a_MainRequired].[Field] IS NULL)
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AssociatedTable') IS NOT NULL)
	DROP TABLE [AssociatedTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainTable') IS NOT NULL)
	DROP TABLE [MainTable]

