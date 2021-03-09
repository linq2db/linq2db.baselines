﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [DataClass]
(
	[Id]    Int      NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value_1 DateTime2
SET     @Value_1 = '2020-02-29T17:54:55.1230000'

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
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[DataClass]', N'U') IS NOT NULL)
	DROP TABLE [DataClass]

