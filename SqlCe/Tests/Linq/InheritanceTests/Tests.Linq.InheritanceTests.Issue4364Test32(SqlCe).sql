BeforeExecute
-- SqlCe

DROP TABLE [Issue4364_BaseThing]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4364_BaseThing]
(
	[Id]                Int NOT NULL,
	[Type]              Int NOT NULL,
	[BaseField]         Int NOT NULL,
	[ConcreteField]     Int     NULL,
	[IntermediateField] Int     NULL,

	CONSTRAINT [PK_Issue4364_BaseThing] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4364_BaseThing]
(
	[Id],
	[Type],
	[BaseField],
	[ConcreteField],
	[IntermediateField]
)
SELECT 1,1,2,0,0 UNION ALL
SELECT 2,2,3,4,0 UNION ALL
SELECT 3,101,4,0,6 UNION ALL
SELECT 4,102,5,0,0

BeforeExecute
-- SqlCe

DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4364_Person]
(
	[Id]       Int           NOT NULL,
	[FullName] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue4364_Person] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4364_Person]
(
	[Id],
	[FullName]
)
SELECT 1,'Person 1' UNION ALL
SELECT 2,'Person 2' UNION ALL
SELECT 3,'Person 3' UNION ALL
SELECT 4,'Person 4' UNION ALL
SELECT 5,'Person 5'

BeforeExecute
-- SqlCe

DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4364_Interaction]
(
	[Id]       Int NOT NULL,
	[PersonId] Int NOT NULL,
	[ThingId]  Int NOT NULL,

	CONSTRAINT [PK_Issue4364_Interaction] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4364_Interaction]
(
	[Id],
	[PersonId],
	[ThingId]
)
SELECT 1,2,3 UNION ALL
SELECT 2,3,4 UNION ALL
SELECT 3,4,1 UNION ALL
SELECT 4,1,2

BeforeExecute
-- SqlCe

SELECT
	[b].[Type] as [Type_1],
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
-- SqlCe

DROP TABLE [Issue4364_Interaction]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4364_Person]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4364_BaseThing]

