BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SampleData]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [SampleData]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_SampleData] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 10
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 100
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 20
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 200
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 30
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 300
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 40
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 400
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 50
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 500
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 60
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 600
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 70
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 700
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 80
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 800
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 90
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 900
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1000
DECLARE @Value3 Integer -- Int32
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
	@Id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value1],
			[t].[Value2],
			[t].[Value3]
		FROM
			[SampleData] [t]
		WHERE
			[t].[Id] MOD 2 = 0
		UNION ALL
		SELECT
			[t_1].[Id],
			[t_1].[Value1],
			[t_1].[Value2],
			[t_1].[Value3]
		FROM
			[SampleData] [t_1]
		WHERE
			[t_1].[Id] MOD 2 = 0
	) [t1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[SampleData] [t_2]
		WHERE
			[t_2].[Id] MOD 4 = 0 AND
			[t1].[Id] = [t_2].[Id] AND
			[t1].[Value1] = [t_2].[Value1] AND
			[t1].[Value2] = [t_2].[Value2] AND
			[t1].[Value3] = [t_2].[Value3]
	)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [SampleData]

