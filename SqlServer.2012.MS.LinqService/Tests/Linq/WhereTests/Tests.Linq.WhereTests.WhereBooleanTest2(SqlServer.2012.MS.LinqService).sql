BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NOT NULL)
	DROP TABLE [WhereCases]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NULL)
	CREATE TABLE [WhereCases]
	(
		[Id]                Int NOT NULL,
		[BoolValue]         Bit NOT NULL,
		[NullableBoolValue] Bit     NULL,

		CONSTRAINT [PK_WhereCases] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
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
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
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
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 1

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
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
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
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
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 0
DECLARE @NullableBoolValue Bit -- Boolean
SET     @NullableBoolValue = 0

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 1 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = 1 AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = 1 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] IS NULL AND [t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] IS NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND ([t].[NullableBoolValue] = 0 OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND
	[t].[Id] > 0

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT ([t].[BoolValue] = 0 AND [t].[NullableBoolValue] = 0 AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[WhereCases]', N'U') IS NOT NULL)
	DROP TABLE [WhereCases]

