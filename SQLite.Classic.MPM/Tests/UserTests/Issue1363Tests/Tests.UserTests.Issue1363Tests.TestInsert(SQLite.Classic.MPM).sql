﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1363]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1363]
(
	[required_field] Guid NOT NULL,
	[optional_field] Guid     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Guid
SET     @id = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @testId  -- Guid
SET     @testId = X'00000000000000000000000000000000'

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1363]

