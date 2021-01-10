BeforeExecute
-- SqlServer.2005

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime
SET     @Value_1 = '2021-01-10T13:16:01.943'

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
-- SqlServer.2005

DROP TABLE [DataClass]

