BeforeExecute
-- SqlServer.2017

CREATE TABLE [Issue1363]
(
	[required_field] UniqueIdentifier NOT NULL,
	[optional_field] UniqueIdentifier     NULL
)

BeforeExecute
-- SqlServer.2017
DECLARE @id UniqueIdentifier -- Guid
SET     @id = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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
-- SqlServer.2017
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
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id2 UniqueIdentifier -- Guid
SET     @id2 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (@take) 
	[_].[required_field], 
	[_].[optional_field]
FROM
	[Issue1363] [_]
WHERE
	[_].[required_field] = @id2

BeforeExecute
-- SqlServer.2017

DROP TABLE [Issue1363]

