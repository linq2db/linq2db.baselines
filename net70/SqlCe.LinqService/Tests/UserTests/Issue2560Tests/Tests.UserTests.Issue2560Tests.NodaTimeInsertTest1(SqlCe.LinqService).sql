BeforeExecute
-- SqlCe

DROP TABLE [DataClass]

BeforeExecute
-- SqlCe

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = '2020-02-29 17:54:55.123'

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [DataClass]

