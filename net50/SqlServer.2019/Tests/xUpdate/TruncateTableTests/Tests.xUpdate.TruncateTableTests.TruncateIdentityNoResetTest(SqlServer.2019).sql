﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[test_temp]', N'U') IS NULL)
	CREATE TABLE [test_temp]
	(
		[ID]     Int      NOT NULL IDENTITY,
		[Field1] Decimal  NOT NULL,

		CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE FROM [test_temp]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[test_temp]', N'U') IS NOT NULL)
	DROP TABLE [test_temp]

