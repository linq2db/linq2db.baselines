BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

