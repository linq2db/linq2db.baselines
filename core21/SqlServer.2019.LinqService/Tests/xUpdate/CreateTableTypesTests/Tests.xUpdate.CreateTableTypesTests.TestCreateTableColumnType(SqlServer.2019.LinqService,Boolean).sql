BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [CreateTableTypes]
(
	[Id]      Int NOT NULL,
	[Boolean] Bit NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Boolean_1 Bit -- Boolean
SET     @Boolean_1 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Boolean_1 Bit -- Boolean
SET     @Boolean_1 = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Boolean]
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[Id], 
	[t1].[Boolean]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [CreateTableTypes]

