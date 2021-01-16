BeforeExecute
-- SqlServer.2005

CREATE TABLE [Issue1373Tests]
(
	[Id]     Int            NOT NULL,
	[Field1] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @Field1 NVarChar(4000) -- String
SET     @Field1 = NULL

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	1,
	@Field1
)

BeforeExecute
-- SqlServer.2005
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
-- SqlServer.2005
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
-- SqlServer.2005

DROP TABLE [Issue1373Tests]

