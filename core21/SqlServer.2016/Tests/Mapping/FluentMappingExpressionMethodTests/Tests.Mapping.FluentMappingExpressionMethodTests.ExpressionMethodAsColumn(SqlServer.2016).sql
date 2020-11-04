﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NULL)
	CREATE TABLE [InstanceClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110),
(11,111),
(12,112),
(13,113),
(14,114),
(15,115),
(16,116),
(17,117),
(18,118),
(19,119),
(20,120)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[InstanceClass] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NOT NULL)
	DROP TABLE [InstanceClass]

