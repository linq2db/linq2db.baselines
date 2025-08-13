BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Boolean Bit -- Boolean
SET     @Boolean = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Boolean Bit -- Boolean
SET     @Boolean = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Boolean]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

