﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1096Task]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue1096Task]
(
	[Id]         Int           NOT NULL,
	[TargetName] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Issue1096TaskStage]
(
	[Id]     Int NOT NULL,
	[TaskId] Int NOT NULL,
	[Actual] Bit NOT NULL,

	CONSTRAINT [PK_Issue1096TaskStage] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Issue1096Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TargetName NVarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO [Issue1096Task]
(
	[Id],
	[TargetName]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @TaskId Int -- Int32
SET     @TaskId = 1
DECLARE @Actual Bit -- Boolean
SET     @Actual = True

INSERT INTO [Issue1096TaskStage]
(
	[Id],
	[TaskId],
	[Actual]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT DISTINCT
	[t].[Id],
	[t].[TargetName],
	[a_ActualStage].[Id],
	[a_ActualStage].[TaskId],
	[a_ActualStage].[Actual]
FROM
	[Issue1096Task] [t]
		LEFT JOIN [Issue1096TaskStage] [a_ActualStage] ON (([t].[Id] = [a_ActualStage].[TaskId]) AND [a_ActualStage].[Actual] = True)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1096TaskStage]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Issue1096Task]

