BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @parentId Integer -- Int32
SET     @parentId = 111

SELECT
	version_1."inIdMain"
FROM
	(
		SELECT
			u."inIdChild" as "VersionId"
		FROM
			"stLinks" u
		WHERE
			u."inIdParent" = :parentId
		UNION ALL
		SELECT
			link_1."inIdParent" as "VersionId"
		FROM
			"stLinks" link_1
		WHERE
			link_1."inIdChild" = :parentId
	) u_1
		INNER JOIN "stVersions" version_1 ON u_1."VersionId" = version_1."inId"

