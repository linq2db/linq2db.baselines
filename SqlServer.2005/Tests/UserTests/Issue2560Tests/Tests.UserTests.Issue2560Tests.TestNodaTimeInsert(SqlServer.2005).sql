﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DataClass]', N'U') IS NOT NULL)
	DROP TABLE [DataClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[DataClass]', N'U') IS NULL)
	CREATE TABLE [DataClass]
	(
		[Id]    Int      NOT NULL,
		[Value] DateTime NOT NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 0
DECLARE @Value DateTime
SET     @Value = CAST('2020-02-29T17:54:55.123' AS DATETIME)

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
-- SqlServer.2005

IF (OBJECT_ID(N'[DataClass]', N'U') IS NOT NULL)
	DROP TABLE [DataClass]

