BeforeExecute
-- SqlCe

DROP TABLE [TagTestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TagTestTable]
(
	[ID]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

/* Wonderful tag */
INSERT INTO [TagTestTable]
(
	[ID],
	[Name]
)
VALUES
(
	100,
	'name'
)

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'updated'

/* Wonderful tag */
UPDATE
	[TagTestTable]
SET
	[TagTestTable].[Name] = @Name
WHERE
	[TagTestTable].[ID] = 100

BeforeExecute
-- SqlCe

/* Wonderful tag */
DELETE FROM
	[TagTestTable]
WHERE
	[TagTestTable].[ID] = 100

BeforeExecute
-- SqlCe

/* Wonderful tag */
DELETE FROM [TagTestTable]

BeforeExecute
-- SqlCe

DROP TABLE [TagTestTable]

