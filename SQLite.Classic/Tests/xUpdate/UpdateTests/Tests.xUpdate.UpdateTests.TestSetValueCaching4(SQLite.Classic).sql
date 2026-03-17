-- SQLite.Classic SQLite
DECLARE @Value4  -- Guid
SET     @Value4 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Value4  -- Guid
SET     @Value4 = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value4] = @Value4
WHERE
	[UpdateSetTest].[Id] = @id

-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value4]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

