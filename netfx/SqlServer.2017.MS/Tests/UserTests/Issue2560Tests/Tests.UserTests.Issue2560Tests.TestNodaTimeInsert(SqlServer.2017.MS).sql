﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [DataClass]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[DataClass]', N'U') IS NULL)
	CREATE TABLE [DataClass]
	(
		[Id]    Int      NOT NULL,
		[Value] DateTime NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1230000, 7)

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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [DataClass]

