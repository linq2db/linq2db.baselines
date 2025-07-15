BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Field1 NVarChar(4) -- String
SET     @Field1 = 'test'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

