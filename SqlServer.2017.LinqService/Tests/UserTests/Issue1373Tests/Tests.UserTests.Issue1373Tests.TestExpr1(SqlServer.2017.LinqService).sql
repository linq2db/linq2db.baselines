BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1373Tests]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue1373Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1373Tests]
	(
		[Id]     Int            NOT NULL,
		[Field1] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	2,
	@Field1
)

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1373Tests]

