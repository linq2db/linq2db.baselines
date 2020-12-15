BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [CreateTableTypes]
(
	[Id]               Int      NOT NULL,
	[DateTimeNullable] DateTime     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable DateTime2
SET     @DateTimeNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable DateTime2
SET     @DateTimeNullable = '2018-11-25T01:02:03'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTimeNullable]
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[DateTimeNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [CreateTableTypes]

