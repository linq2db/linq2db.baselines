BeforeExecute
-- SqlServer.2005

CREATE TABLE [CreateTableTypes]
(
	[Id]       Int      NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTime DateTime
SET     @DateTime = '2000-01-01T00:00:00'

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
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTime DateTime
SET     @DateTime = '2018-11-24T01:02:03'

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
-- SqlServer.2005

DROP TABLE [CreateTableTypes]

