﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	1,
	NULL
)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	2,
	NULL
)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = N'test'

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	@Field1
)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

