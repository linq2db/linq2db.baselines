﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime2
SET     @Value_1 = '2021-03-01T18:15:50.4720000'

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
-- SqlServer.2017

DROP TABLE [DataClass]

