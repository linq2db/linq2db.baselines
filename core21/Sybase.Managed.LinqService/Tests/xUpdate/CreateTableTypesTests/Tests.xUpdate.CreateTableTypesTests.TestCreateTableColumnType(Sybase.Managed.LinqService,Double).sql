BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [CreateTableTypes]
(
	[Id]     Int   NOT NULL,
	[Double] Float NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Double_1 Double
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
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Double_1 Double
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
-- Sybase.Managed Sybase

SELECT 
	[t1].[Id], 
	[t1].[Double]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [CreateTableTypes]

