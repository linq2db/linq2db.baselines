BeforeExecute
-- SqlCe

DROP TABLE [Issue4192TableNullable]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4192TableNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int               NULL
)

BeforeExecute
-- SqlCe
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- SqlCe

DROP TABLE [Issue4192TableNullable]

