-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime
SET     @DateTime = CAST('2000-01-01T00:00:00.000' AS DATETIME)

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime
SET     @DateTime = CAST('2018-11-24T01:02:03.000' AS DATETIME)

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

