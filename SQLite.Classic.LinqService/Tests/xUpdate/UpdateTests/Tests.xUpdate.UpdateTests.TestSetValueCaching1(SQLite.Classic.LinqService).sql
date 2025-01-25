BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value1  -- Guid
SET     @Value1 = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value1  -- Guid
SET     @Value1 = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest]
SET
	[Value1] = @Value1
WHERE
	[UpdateSetTest].[Id] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[Value1]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id
LIMIT 2

