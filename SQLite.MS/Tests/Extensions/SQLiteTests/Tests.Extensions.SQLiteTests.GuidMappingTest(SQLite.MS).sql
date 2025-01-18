BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid1]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid2]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid3]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid3) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[BlobGuid4]
)
VALUES
(
	X'3D667BBCDE0F27438F925D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid4) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[TextGuid1]
)
VALUES
(
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(TextGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

SELECT TextGuid1 FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [GuidMapping]
(
	[TextGuid2]
)
VALUES
(
	'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(TextGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

SELECT TextGuid2 FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1  -- Guid
SET     @NonReadonlyGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid1]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1 NVarChar(16) -- String
SET     @NonReadonlyGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid2]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1  -- Guid
SET     @NonReadonlyGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid3]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid3) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1  -- Guid
SET     @NonReadonlyGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[BlobGuid4]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(BlobGuid4) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1  -- Guid
SET     @NonReadonlyGuid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[TextGuid1]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(TextGuid1) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

SELECT TextGuid1 FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @NonReadonlyGuid1 VarChar(36) -- AnsiString
SET     @NonReadonlyGuid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'

INSERT INTO [GuidMapping]
(
	[TextGuid2]
)
VALUES
(
	@NonReadonlyGuid1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT typeof(TextGuid2) FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

SELECT TextGuid2 FROM GuidMapping

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @BlobGuid1  -- Guid
SET     @BlobGuid1 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid2 NVarChar(16) -- String
SET     @BlobGuid2 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid3  -- Guid
SET     @BlobGuid3 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @BlobGuid4  -- Guid
SET     @BlobGuid4 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @TextGuid1  -- Guid
SET     @TextGuid1 = 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11'
DECLARE @TextGuid2 VarChar(36) -- AnsiString
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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DELETE FROM
	[GuidMapping]

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO GuidMapping(BlobGuid1, BlobGuid2, BlobGuid3, BlobGuid4, TextGuid1, TextGuid2) VALUES('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11', 'BC7B663D-0FDE-4327-8F92-5D8CC3A11D11')

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO GuidMapping(BlobGuid1, BlobGuid2, BlobGuid3, BlobGuid4, TextGuid1, TextGuid2) VALUES(x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11', x'3D667BBCDE0F27438F925D8CC3A11D11')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[BlobGuid1],
	[t1].[BlobGuid2],
	[t1].[BlobGuid3],
	[t1].[BlobGuid4],
	[t1].[TextGuid1],
	[t1].[TextGuid2]
FROM
	[GuidMapping] [t1]

