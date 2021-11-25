BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

BeforeExecute
-- SqlCe

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 100

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value],
	[t1].[c1],
	[t1].[c2]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1],
				3 as [c2]
		) [t1] ON [t1].[c1] = [t].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

