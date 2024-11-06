BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NULL)
	CREATE TABLE [Issue4364_BaseThing]
	(
		[Id]                Int NOT NULL,
		[Type]              Int NOT NULL,
		[BaseField]         Int NOT NULL,
		[ConcreteField]     Int     NULL,
		[IntermediateField] Int     NULL,

		CONSTRAINT [PK_Issue4364_BaseThing] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @BaseField Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Type Int -- Int32
SET     @Type = 2
DECLARE @BaseField Int -- Int32
SET     @BaseField = 3
DECLARE @ConcreteField Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Type Int -- Int32
SET     @Type = 101
DECLARE @BaseField Int -- Int32
SET     @BaseField = 4
DECLARE @IntermediateField Int -- Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Type Int -- Int32
SET     @Type = 102
DECLARE @BaseField Int -- Int32
SET     @BaseField = 5
DECLARE @IntermediateField Int -- Int32
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
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NULL)
	CREATE TABLE [Issue4364_Person]
	(
		[Id]       Int            NOT NULL,
		[FullName] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Issue4364_Person] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @FullName NVarChar(4000) -- String
SET     @FullName = N'Person 1'

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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @FullName NVarChar(4000) -- String
SET     @FullName = N'Person 2'

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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @FullName NVarChar(4000) -- String
SET     @FullName = N'Person 3'

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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @FullName NVarChar(4000) -- String
SET     @FullName = N'Person 4'

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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @FullName NVarChar(4000) -- String
SET     @FullName = N'Person 5'

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
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NULL)
	CREATE TABLE [Issue4364_Interaction]
	(
		[Id]       Int NOT NULL,
		[PersonId] Int NOT NULL,
		[ThingId]  Int NOT NULL,

		CONSTRAINT [PK_Issue4364_Interaction] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @PersonId Int -- Int32
SET     @PersonId = 2
DECLARE @ThingId Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @PersonId Int -- Int32
SET     @PersonId = 3
DECLARE @ThingId Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @PersonId Int -- Int32
SET     @PersonId = 4
DECLARE @ThingId Int -- Int32
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
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @PersonId Int -- Int32
SET     @PersonId = 1
DECLARE @ThingId Int -- Int32
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
-- SqlServer.2012

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[Issue4364_BaseThing] [b]
		INNER JOIN [Issue4364_Interaction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [Issue4364_Person] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[b].[Type] = 101 OR [b].[Type] = 102
ORDER BY
	[b].[Id]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Interaction]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4364_BaseThing]', N'U') IS NOT NULL)
	DROP TABLE [Issue4364_BaseThing]

