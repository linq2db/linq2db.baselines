﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [TestIdTrun]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [TestIdTrun]

