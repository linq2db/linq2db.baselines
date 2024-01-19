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

INSERT INTO [SelectExpressionTable]
(
	[ID]
)
SELECT 1

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @p UniqueIdentifier -- Guid
SET     @p = 'b3d9b51c-89f9-442a-893b-cd8a6f667d37'
DECLARE @p_1 UniqueIdentifier -- Guid
SET     @p_1 = '61efdcd4-659d-41e8-910c-506a9c2f31c5'

SELECT TOP (@take)
	@p,
	@p_1
FROM
	[SelectExpressionTable] [_]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SelectExpressionTable]', N'U') IS NOT NULL)
	DROP TABLE [SelectExpressionTable]

