﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	0
)

BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT TOP (2)
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

