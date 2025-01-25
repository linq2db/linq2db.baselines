BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stLinks

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS stLinks
(
	inId          Int32,
	inIdParent    Int32,
	inIdChild     Int32,
	inIdTypeRel   Int32,
	inMaxQuantity Nullable(Float64),
	inMinQuantity Nullable(Float64),
	inIdMeasure   Nullable(Int32),
	inIdUnit      Nullable(Int32),
	State         Nullable(Int32),
	dtModified    DateTime64(7),
	inIdOrgOwner  Nullable(Int32),
	dtSynchDate   Nullable(DateTime64(7)),
	stGUID        String,

	PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS stVersions
(
	inId     Int32,
	inIdMain Int32,

	PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stLinks

