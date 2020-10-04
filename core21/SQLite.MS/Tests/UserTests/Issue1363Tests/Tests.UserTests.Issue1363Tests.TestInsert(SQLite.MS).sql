BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1363]
(
	[required_field] Guid NOT NULL,
	[optional_field] Guid     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Guid
SET     @id = X'3D667BBCDE0F27438F925D8CC3A11D11'

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
-- SQLite.MS SQLite
DECLARE @id  -- Guid
SET     @id = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @testId  -- Guid
SET     @testId = X'3D667BBCDE0F27438F925D8CC3A11D11'

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
-- SQLite.MS SQLite
DECLARE @id2  -- Guid
SET     @id2 = X'0D6048A921DE744F8AC29516B287076E'
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
-- SQLite.MS SQLite

DROP TABLE [Issue1363]

