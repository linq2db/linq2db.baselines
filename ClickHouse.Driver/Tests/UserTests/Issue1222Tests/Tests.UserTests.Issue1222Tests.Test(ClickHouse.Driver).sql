-- ClickHouse.Driver ClickHouse

SELECT
	version_1.inIdMain
FROM
	(
		SELECT
			u.inIdChild as VersionId
		FROM
			stLinks u
		WHERE
			u.inIdParent = 111
		UNION ALL
		SELECT
			link_1.inIdParent as VersionId
		FROM
			stLinks link_1
		WHERE
			link_1.inIdChild = 111
	) u_1
		INNER JOIN stVersions version_1 ON u_1.VersionId = version_1.inId

