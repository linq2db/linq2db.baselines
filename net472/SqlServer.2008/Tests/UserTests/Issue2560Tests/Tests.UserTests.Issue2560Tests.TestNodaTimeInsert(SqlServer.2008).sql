﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime2
SET     @Value_1 = '2021-02-28T17:33:41.9070000'

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
-- SqlServer.2008

DROP TABLE [DataClass]

