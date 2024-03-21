﻿BeforeExecute
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
DECLARE @Field NVarChar(4) -- String
SET     @Field = 'test'
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[MainTable]
SET
	[Field] = @Field
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[AssociatedTable] [pat]
				LEFT JOIN [MainTable] [a_MainOptional] ON [pat].[Id] = [a_MainOptional].[Id]
		WHERE
			[pat].[Id] = @id AND [MainTable].[Id] = [a_MainOptional].[Id] AND
			([MainTable].[Field] = [a_MainOptional].[Field] OR [MainTable].[Field] IS NULL AND [a_MainOptional].[Field] IS NULL)
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

