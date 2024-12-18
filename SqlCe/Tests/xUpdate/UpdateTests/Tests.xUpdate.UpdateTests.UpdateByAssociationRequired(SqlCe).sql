BeforeExecute
-- SqlCe

DROP TABLE [MainTable]

BeforeExecute
-- SqlCe

CREATE TABLE [MainTable]
(
	[Id]    Int           NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
SELECT 1,'value 1' UNION ALL
SELECT 2,'value 2' UNION ALL
SELECT 3,'value 3'

BeforeExecute
-- SqlCe

DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlCe

CREATE TABLE [AssociatedTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [AssociatedTable]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 3

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MainTable] [t1]
				INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON [t1].[Id] = [a_AssociatedRequired].[Id]
				INNER JOIN [MainTable] [a_MainRequired] ON [a_AssociatedRequired].[Id] = [a_MainRequired].[Id]
		WHERE
			[t1].[Id] = @id AND [MainTable].[Id] = [a_MainRequired].[Id] AND
			([MainTable].[Field] = [a_MainRequired].[Field] AND [MainTable].[Field] IS NOT NULL AND [a_MainRequired].[Field] IS NOT NULL OR [MainTable].[Field] IS NULL AND [a_MainRequired].[Field] IS NULL)
	)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [AssociatedTable]

BeforeExecute
-- SqlCe

DROP TABLE [MainTable]

