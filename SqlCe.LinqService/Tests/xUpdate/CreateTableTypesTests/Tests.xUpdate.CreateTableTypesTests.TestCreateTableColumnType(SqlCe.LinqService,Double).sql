BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Double Float -- Double
SET     @Double = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Double Float -- Double
SET     @Double = 3.1400000000000001

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Double] as [Double_1]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

