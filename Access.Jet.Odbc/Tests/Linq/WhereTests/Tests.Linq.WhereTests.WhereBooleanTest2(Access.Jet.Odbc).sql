BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereCases]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [WhereCases]
(
	[Id]                Int NOT NULL,
	[BoolValue]         Bit NOT NULL,
	[NullableBoolValue] Bit     NULL,

	CONSTRAINT [PK_WhereCases] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = True

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = True

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = True
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = True

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = False

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = False

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = False
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = False

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = True AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = True AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = True AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = True AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = False AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = False AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = False AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = False AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = True AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = True AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = True AND [t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = True AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL)) AND
	[t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND
	[t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL) AND
	[t].[Id] > 0

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereCases]

