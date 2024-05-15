BeforeExecute
-- SqlCe

DROP TABLE [Issue1373Tests]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1373Tests]
(
	[Id]     Int           NOT NULL,
	[Field1] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

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
-- SqlCe

INSERT INTO [Issue1373Tests]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	'test'
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Issue1373Tests]

