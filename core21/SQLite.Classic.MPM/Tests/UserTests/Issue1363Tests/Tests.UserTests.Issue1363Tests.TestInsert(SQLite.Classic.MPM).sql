BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue1363]
(
	[required_field] Guid NOT NULL,
	[optional_field] Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Guid
SET     @id = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)

INSERT INTO [Issue1363]
(
	[required_field],
	[optional_field]
)
VALUES
(
	@id,
	(
		SELECT
			[_].[required_field]
		FROM
			[Issue1363] [_]
		WHERE
			[_].[required_field] IS NULL
	)
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Guid
SET     @id = Cast(x'0d6048a921de744f8ac29516b287076e' as blob)
DECLARE @testId  -- Guid
SET     @testId = Cast(x'3d667bbcde0f27438f925d8cc3a11d11' as blob)

INSERT INTO [Issue1363]
(
	[required_field],
	[optional_field]
)
VALUES
(
	@id,
	(
		SELECT
			[_].[required_field]
		FROM
			[Issue1363] [_]
		WHERE
			[_].[required_field] = @testId
	)
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id2  -- Guid
SET     @id2 = Cast(x'0d6048a921de744f8ac29516b287076e' as blob)
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[required_field],
	[_].[optional_field]
FROM
	[Issue1363] [_]
WHERE
	[_].[required_field] = @id2
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [Issue1363]

