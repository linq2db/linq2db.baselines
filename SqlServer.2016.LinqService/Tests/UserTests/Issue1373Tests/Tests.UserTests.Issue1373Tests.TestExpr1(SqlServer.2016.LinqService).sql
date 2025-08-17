BeforeExecute
-- SqlServer.2016 (asynchronously)

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
-- SqlServer.2016 (asynchronously)

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
-- SqlServer.2016 (asynchronously)

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	N'test'
)

BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

