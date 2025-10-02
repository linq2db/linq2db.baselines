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
			[AssociatedTable] [p]
				INNER JOIN [MainTable] [a_MainRequired] ON [p].[Id] = [a_MainRequired].[Id]
		WHERE
			[p].[Id] = @id AND [MainTable].[Id] = [a_MainRequired].[Id]
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

