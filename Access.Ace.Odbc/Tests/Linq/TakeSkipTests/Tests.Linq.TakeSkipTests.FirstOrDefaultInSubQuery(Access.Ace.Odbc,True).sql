BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Batch]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Batch]
(
	[Id]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V1'

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V2'

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(2) -- String
SET     @Value = 'V3'

INSERT INTO [Batch]
(
	[Id],
	[Value]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Confirmation]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Confirmation]
(
	[BatchId] Int      NOT NULL,
	[Date]    DateTime NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BatchId  -- Int32
SET     @BatchId = 1
DECLARE @Date  -- DateTime
SET     @Date = #2019-04-09 14:30:00#

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BatchId  -- Int32
SET     @BatchId = 2
DECLARE @Date  -- DateTime
SET     @Date = #2019-04-09 14:30:20#

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BatchId  -- Int32
SET     @BatchId = 2
DECLARE @Date  -- DateTime
SET     @Date = #2019-04-09 14:30:25#

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @BatchId  -- Int32
SET     @BatchId = 3
DECLARE @Date  -- DateTime
SET     @Date = #2019-04-09 14:30:35#

INSERT INTO [Confirmation]
(
	[BatchId],
	[Date]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Date_1],
	[t1].[Value_1]
FROM
	(
		SELECT TOP 2
			[x].[Id],
			(
				SELECT TOP 1
					[a_Confirmations].[Date]
				FROM
					[Confirmation] [a_Confirmations]
				WHERE
					[x].[Id] = [a_Confirmations].[BatchId]
			) as [Date_1],
			[x].[Value] as [Value_1]
		FROM
			[Batch] [x]
		ORDER BY
			[x].[Id] DESC
	) [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Confirmation]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Batch]

