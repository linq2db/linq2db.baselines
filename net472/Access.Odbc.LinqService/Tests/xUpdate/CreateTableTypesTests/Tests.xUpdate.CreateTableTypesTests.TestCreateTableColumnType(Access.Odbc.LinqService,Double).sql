﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [CreateTableTypes]
(
	[Id]     Int   NOT NULL,
	[Double] Float NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Double]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CreateTableTypes]

