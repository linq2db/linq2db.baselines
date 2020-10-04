﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Issue1373Tests]
(
	[Id]     INTEGER       NOT NULL,
	[Field1] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1373Tests] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Field1 NVarChar -- String
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
-- SQLite.Classic SQLite
DECLARE @Field1 NVarChar -- String
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[Issue1373Tests] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Issue1373Tests]

