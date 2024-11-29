BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_BaseThing') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_BaseThing') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4364_BaseThing]
		(
			[Id]                Int NOT NULL,
			[Type]              Int NOT NULL,
			[BaseField]         Int NOT NULL,
			[ConcreteField]     Int     NULL,
			[IntermediateField] Int     NULL,

			CONSTRAINT [PK_Issue4364_BaseThing] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 2

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField]
)
VALUES
(
	@Id,
	@Type,
	@BaseField
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Type Integer -- Int32
SET     @Type = 2
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 3
DECLARE @ConcreteField Integer -- Int32
SET     @ConcreteField = 4

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[ConcreteField]
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@ConcreteField
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Type Integer -- Int32
SET     @Type = 101
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 4
DECLARE @IntermediateField Integer -- Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Integer -- Int32
SET     @ConcreteField = 5

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[IntermediateField],
	[ConcreteField]
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField,
	@ConcreteField
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Type Integer -- Int32
SET     @Type = 102
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 5
DECLARE @IntermediateField Integer -- Int32
SET     @IntermediateField = 6

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[IntermediateField]
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@IntermediateField
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Person') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Person') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4364_Person]
		(
			[Id]       Int           NOT NULL,
			[FullName] NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Issue4364_Person] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FullName UniVarChar(8) -- String
SET     @FullName = 'Person 1'

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FullName UniVarChar(8) -- String
SET     @FullName = 'Person 2'

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FullName UniVarChar(8) -- String
SET     @FullName = 'Person 3'

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FullName UniVarChar(8) -- String
SET     @FullName = 'Person 4'

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FullName UniVarChar(8) -- String
SET     @FullName = 'Person 5'

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
VALUES
(
	@Id,
	@FullName
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Interaction') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Interaction') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4364_Interaction]
		(
			[Id]       Int NOT NULL,
			[PersonId] Int NOT NULL,
			[ThingId]  Int NOT NULL,

			CONSTRAINT [PK_Issue4364_Interaction] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 2
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 3

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 3
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 4

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 4
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 1

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 2

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
VALUES
(
	@Id,
	@PersonId,
	@ThingId
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[Issue4364_BaseThing] [b]
		INNER JOIN [Issue4364_Interaction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [Issue4364_Person] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[b].[Type] IN (102, 101)
ORDER BY
	[b].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Interaction') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_Person') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4364_BaseThing') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

