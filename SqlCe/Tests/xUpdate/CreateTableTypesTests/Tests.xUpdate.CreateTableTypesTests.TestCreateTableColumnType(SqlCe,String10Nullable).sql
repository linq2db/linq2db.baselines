-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @String NVarChar -- String
SET     @String = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @String NVarChar(9) -- String
SET     @String = 'test 10 n'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

