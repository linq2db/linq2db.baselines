﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleData]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SampleData]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_SampleData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 10
DECLARE @Value2 Int -- Int32
SET     @Value2 = 100
DECLARE @Value3 Int -- Int32
SET     @Value3 = 1000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = 20
DECLARE @Value2 Int -- Int32
SET     @Value2 = 200
DECLARE @Value3 Int -- Int32
SET     @Value3 = 2000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 30
DECLARE @Value2 Int -- Int32
SET     @Value2 = 300
DECLARE @Value3 Int -- Int32
SET     @Value3 = 3000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value1 Int -- Int32
SET     @Value1 = 40
DECLARE @Value2 Int -- Int32
SET     @Value2 = 400
DECLARE @Value3 Int -- Int32
SET     @Value3 = 4000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value1 Int -- Int32
SET     @Value1 = 50
DECLARE @Value2 Int -- Int32
SET     @Value2 = 500
DECLARE @Value3 Int -- Int32
SET     @Value3 = 5000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value1 Int -- Int32
SET     @Value1 = 60
DECLARE @Value2 Int -- Int32
SET     @Value2 = 600
DECLARE @Value3 Int -- Int32
SET     @Value3 = 6000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value1 Int -- Int32
SET     @Value1 = 70
DECLARE @Value2 Int -- Int32
SET     @Value2 = 700
DECLARE @Value3 Int -- Int32
SET     @Value3 = 7000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value1 Int -- Int32
SET     @Value1 = 80
DECLARE @Value2 Int -- Int32
SET     @Value2 = 800
DECLARE @Value3 Int -- Int32
SET     @Value3 = 8000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value1 Int -- Int32
SET     @Value1 = 90
DECLARE @Value2 Int -- Int32
SET     @Value2 = 900
DECLARE @Value3 Int -- Int32
SET     @Value3 = 9000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100
DECLARE @Value2 Int -- Int32
SET     @Value2 = 1000
DECLARE @Value3 Int -- Int32
SET     @Value3 = 10000

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT DISTINCT
	[r].[Value1]
FROM
	[SampleData] [r]
WHERE
	[r].[Id] MOD 2 = 0 AND NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [r_1]
		WHERE
			[r_1].[Id] MOD 4 = 0 AND [r].[Id] = [r_1].[Id] AND
			[r].[Value1] = [r_1].[Value2] / 10
	) AND
	NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [r_2]
		WHERE
			[r_2].[Id] MOD 6 = 0 AND [r].[Id] = [r_2].[Id] AND
			[r].[Value1] = [r_2].[Value1]
	)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SampleData]

