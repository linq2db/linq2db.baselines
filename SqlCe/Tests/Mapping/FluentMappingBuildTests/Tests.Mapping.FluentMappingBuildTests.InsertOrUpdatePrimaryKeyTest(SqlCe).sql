﻿BeforeExecute
-- SqlCe

DROP TABLE [FluentTemp]

BeforeExecute
-- SqlCe

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- SqlCe

UPDATE
	[FluentTemp]
SET
	[ID] = [FluentTemp].[ID],
	[Name] = [FluentTemp].[Name]
WHERE
	[FluentTemp].[ID] = 1

BeforeExecute
-- SqlCe

DROP TABLE [FluentTemp]

