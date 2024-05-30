BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1373Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1373Tests]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1373Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1373Tests]
	(
		[Id]     Int            NOT NULL,
		[Field1] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = N'test'

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1373Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1373Tests]

