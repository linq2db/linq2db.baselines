BeforeExecute
-- SqlServer.2005

CREATE TABLE [CreateTableTypes]
(
	[Id]     Int   NOT NULL,
	[Double] Float NOT NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 3.1400000000000001

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [CreateTableTypes]

