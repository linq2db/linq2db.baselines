﻿BeforeExecute
-- SqlCe

DROP TABLE [Issue1316Tests]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlCe
DECLARE @Item1 Int -- Int32
SET     @Item1 = 5

SELECT TOP (2)
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Item1

BeforeExecute
-- SqlCe

DROP TABLE [Issue1316Tests]

