-- SqlServer.2008
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

-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable DateTime2
SET     @DateTimeNullable = CAST('2018-11-25T01:02:03.0000000' AS DATETIME2)

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

-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[DateTimeNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

