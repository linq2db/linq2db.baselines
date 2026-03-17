-- Access.Jet.OleDb AccessOleDb
DECLARE @parentId Integer -- Int32
SET     @parentId = 111
DECLARE @parentId_1 Integer -- Int32
SET     @parentId_1 = 111

SELECT
	[version_1].[inIdMain]
FROM
	(
		SELECT
			[u].[inIdChild] as [VersionId]
		FROM
			[stLinks] [u]
		WHERE
			[u].[inIdParent] = @parentId
		UNION ALL
		SELECT
			[link_1].[inIdParent] as [VersionId]
		FROM
			[stLinks] [link_1]
		WHERE
			[link_1].[inIdChild] = @parentId_1
	) [u_1]
		INNER JOIN [stVersions] [version_1] ON ([u_1].[VersionId] = [version_1].[inId])

