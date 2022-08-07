﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [GuidMapping]
(
	[BlobGuid1] Guid                 NULL,
	[BlobGuid2] Binary               NULL,
	[BlobGuid3] Guid                 NULL,
	[BlobGuid4] UNIQUEIDENTIFIER     NULL,
	[TextGuid1] TEXT                 NULL,
	[TextGuid2] VarChar              NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid1]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid2]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid3]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid3) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid4]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid4) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[TextGuid1]
)
VALUES
(
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(TextGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT TextGuid1 FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[TextGuid2]
)
VALUES
(
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(TextGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT TextGuid2 FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1  -- Guid
SET     @Guid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid1]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1  -- Guid
SET     @Guid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid2]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1  -- Guid
SET     @Guid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid3]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid3) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1  -- Guid
SET     @Guid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid4]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(BlobGuid4) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1 NVarChar(36) -- String
SET     @Guid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[TextGuid1]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(TextGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT TextGuid1 FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Guid1 NVarChar(36) -- String
SET     @Guid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[TextGuid2]
)
VALUES
(
	@Guid1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT typeof(TextGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT TextGuid2 FROM GuidMapping

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid1],
	[BlobGuid2],
	[BlobGuid3],
	[BlobGuid4],
	[TextGuid1],
	[TextGuid2]
)
VALUES
(X'3D667BBCDE0F27438F925D8CC3A11D11',X'3D667BBCDE0F27438F925D8CC3A11D11',X'3D667BBCDE0F27438F925D8CC3A11D11',X'3D667BBCDE0F27438F925D8CC3A11D11','BC7B663D-0FDE-4327-8F92-5D8CC3A11D11','BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[BlobGuid1],
	[t1].[BlobGuid2],
	[t1].[BlobGuid3],
	[t1].[BlobGuid4],
	[t1].[TextGuid1],
	[t1].[TextGuid2]
FROM
	[GuidMapping] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid1],
	[BlobGuid2],
	[BlobGuid3],
	[BlobGuid4],
	[TextGuid1],
	[TextGuid2]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11',
	X'3D667BBCDE0F27438F925D8CC3A11D11',
	X'3D667BBCDE0F27438F925D8CC3A11D11',
	X'3D667BBCDE0F27438F925D8CC3A11D11',
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11',
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[BlobGuid1],
	[t1].[BlobGuid2],
	[t1].[BlobGuid3],
	[t1].[BlobGuid4],
	[t1].[TextGuid1],
	[t1].[TextGuid2]
FROM
	[GuidMapping] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BlobGuid1  -- Guid
SET     @BlobGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid2  -- Guid
SET     @BlobGuid2 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid3  -- Guid
SET     @BlobGuid3 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid4  -- Guid
SET     @BlobGuid4 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @TextGuid1 NVarChar(36) -- String
SET     @TextGuid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
DECLARE @TextGuid2 NVarChar(36) -- String
SET     @TextGuid2 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid1],
	[BlobGuid2],
	[BlobGuid3],
	[BlobGuid4],
	[TextGuid1],
	[TextGuid2]
)
VALUES
(
	@BlobGuid1,
	@BlobGuid2,
	@BlobGuid3,
	@BlobGuid4,
	@TextGuid1,
	@TextGuid2
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[BlobGuid1],
	[t1].[BlobGuid2],
	[t1].[BlobGuid3],
	[t1].[BlobGuid4],
	[t1].[TextGuid1],
	[t1].[TextGuid2]
FROM
	[GuidMapping] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO GuidMapping(BlobGuid1, BlobGuid2, BlobGuid3, BlobGuid4, TextGuid1, TextGuid2) VALUES('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO GuidMapping(BlobGuid1, BlobGuid2, BlobGuid3, BlobGuid4, TextGuid1, TextGuid2) VALUES(x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[BlobGuid1],
	[t1].[BlobGuid2],
	[t1].[BlobGuid3],
	[t1].[BlobGuid4],
	[t1].[TextGuid1],
	[t1].[TextGuid2]
FROM
	[GuidMapping] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [GuidMapping]

