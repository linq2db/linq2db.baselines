﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1363]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1363]', N'U') IS NULL)
	CREATE TABLE [Issue1363]
	(
		[required_field] UniqueIdentifier NOT NULL,
		[optional_field] UniqueIdentifier     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @testId UniqueIdentifier -- Guid
SET     @testId = '00000000-0000-0000-0000-000000000000'

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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @testId UniqueIdentifier -- Guid
SET     @testId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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
-- SqlServer.2019.MS SqlServer.2019
DECLARE @id2 UniqueIdentifier -- Guid
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (2)
	[_].[required_field],
	[_].[optional_field]
FROM
	[Issue1363] [_]
WHERE
	[_].[required_field] = @id2

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1363]

