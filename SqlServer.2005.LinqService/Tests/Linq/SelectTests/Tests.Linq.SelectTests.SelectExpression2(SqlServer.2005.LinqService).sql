﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NULL)
	CREATE TABLE [SelectExpressionTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_SelectExpressionTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	CASE
		WHEN 1 = 1 THEN 1
		ELSE 0
	END
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

