BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringConverted NVarChar(4000) -- String
SET     @StringConverted = N'null'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringConverted NVarChar(4000) -- String
SET     @StringConverted = N'[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringConverted]
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[StringConverted]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

