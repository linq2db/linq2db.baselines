﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Requests]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Requests]', N'U') IS NULL)
	CREATE TABLE [Requests]
	(
		[Id]     Int NOT NULL,
		[FirmId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [FirmInfo]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[FirmInfo]', N'U') IS NULL)
	CREATE TABLE [FirmInfo]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Assignments]', N'U') IS NULL)
	CREATE TABLE [Assignments]
	(
		[Id]          Int               NOT NULL IDENTITY,
		[DirectionId] UniqueIdentifier  NOT NULL,
		[TargetId]    Int                   NULL,
		[DateRevoke]  DateTime2             NULL,

		CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1002
DECLARE @FirmId Int -- Int32
SET     @FirmId = 1

INSERT INTO [Requests]
(
	[Id],
	[FirmId]
)
VALUES
(
	@Id,
	@FirmId
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [FirmInfo]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @DirectionId UniqueIdentifier -- Guid
SET     @DirectionId = 'c5c0a778-694e-49d1-b1a0-f8ef5569c673'
DECLARE @TargetId Int -- Int32
SET     @TargetId = 1
DECLARE @DateRevoke DateTime2
SET     @DateRevoke = NULL

INSERT INTO [Assignments]
(
	[DirectionId],
	[TargetId],
	[DateRevoke]
)
VALUES
(
	@DirectionId,
	@TargetId,
	@DateRevoke
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_Requests].[Id],
	[a_Requests].[FirmId],
	[a_DocPrepareAssignment].[Id],
	[a_DocPrepareAssignment].[DirectionId],
	[a_DocPrepareAssignment].[TargetId],
	[a_DocPrepareAssignment].[DateRevoke]
FROM
	[Requests] [r]
		LEFT JOIN [FirmInfo] [a_FirmInfo] ON [r].[FirmId] = [a_FirmInfo].[Id]
		INNER JOIN [Requests] [a_Requests] ON [a_FirmInfo].[Id] = [a_Requests].[FirmId]
		LEFT JOIN [Assignments] [a_DocPrepareAssignment] ON [a_DocPrepareAssignment].[TargetId] = [a_Requests].[Id]
WHERE
	[r].[Id] = 1002

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[a_Requests].[Id],
	[a_Requests].[FirmId],
	[a_DocPrepareAssignment].[Id],
	[a_DocPrepareAssignment].[DirectionId],
	[a_DocPrepareAssignment].[TargetId],
	[a_DocPrepareAssignment].[DateRevoke]
FROM
	[Requests] [r]
		LEFT JOIN [FirmInfo] [a_FirmInfo] ON [r].[FirmId] = [a_FirmInfo].[Id]
		INNER JOIN [Requests] [a_Requests] ON [a_FirmInfo].[Id] = [a_Requests].[FirmId]
		LEFT JOIN [Assignments] [a_DocPrepareAssignment] ON [a_DocPrepareAssignment].[TargetId] = [a_Requests].[Id]
WHERE
	[r].[Id] = 1002

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Assignments]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [FirmInfo]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Requests]

