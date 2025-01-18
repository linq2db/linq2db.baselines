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
			[t1].[required_field]
		FROM
			[Issue1363] [t1]
		WHERE
			1 = 0
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
			[t1].[required_field]
		FROM
			[Issue1363] [t1]
		WHERE
			[t1].[required_field] = @testId
	)
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id2  -- Guid
SET     @id2 = X'0D6048A921DE744F8AC29516B287076E'

SELECT
	[t1].[required_field],
	[t1].[optional_field]
FROM
	[Issue1363] [t1]
WHERE
	[t1].[required_field] = @id2
LIMIT 2

