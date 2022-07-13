BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime
SET     @Value_1 = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [DataClass]

