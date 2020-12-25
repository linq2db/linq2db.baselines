BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [CreateTableTypes]
(
	[Id]       Int      NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime2
SET     @DateTime = '2000-01-01T00:00:00.0000000'

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

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime2
SET     @DateTime = '2018-11-24T01:02:03.0000000'

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

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[DateTime]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [CreateTableTypes]

