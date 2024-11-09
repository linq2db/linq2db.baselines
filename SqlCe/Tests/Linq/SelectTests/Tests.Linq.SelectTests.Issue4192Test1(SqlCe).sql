BeforeExecute
-- SqlCe

DROP TABLE [Issue4192TableNotNullable]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4192TableNotNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int           NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNotNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- SqlCe

DROP TABLE [Issue4192TableNotNullable]

