-- ClickHouse.Driver ClickHouse
SELECT
	version_1.inIdMain
FROM
	(
		SELECT
			u.inIdChild as VersionId
		FROM
			ConcatLinks u
		WHERE
			u.inIdParent = 111
		UNION ALL
		SELECT
			link_1.inIdParent as VersionId
		FROM
			ConcatLinks link_1
		WHERE
			link_1.inIdChild = 111
	) u_1
		INNER JOIN ConcatVersions version_1 ON u_1.VersionId = version_1.inId

