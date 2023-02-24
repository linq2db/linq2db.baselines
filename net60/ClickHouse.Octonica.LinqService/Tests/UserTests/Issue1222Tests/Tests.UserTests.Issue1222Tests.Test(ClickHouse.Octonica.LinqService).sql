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
			link_1.inIdChild as InIdChild,
			link_1.inId as InId,
			link_1.inIdParent as InIdParent,
			link_1.inIdChild as InIdChild_1,
			link_1.inIdTypeRel as InIdTypeRel,
			link_1.inMaxQuantity as InMaxQuantity,
			link_1.inMinQuantity as InMinQuantity,
			link_1.inIdMeasure as InIdMeasure,
			link_1.inIdUnit as InIdUnit,
			link_1.State as State_1,
			link_1.dtModified as DtModified,
			link_1.inIdOrgOwner as InIdOrgOwner,
			link_1.dtSynchDate as DtSynchDate,
			link_1.stGUID as StGUID
		FROM
			stLinks link_1
		WHERE
			link_1.inIdParent = toInt32(111)
		UNION ALL
		SELECT
			link_2.inIdParent as InIdChild,
			link_2.inId as InId,
			link_2.inIdParent as InIdParent,
			link_2.inIdChild as InIdChild_1,
			link_2.inIdTypeRel as InIdTypeRel,
			link_2.inMaxQuantity as InMaxQuantity,
			link_2.inMinQuantity as InMinQuantity,
			link_2.inIdMeasure as InIdMeasure,
			link_2.inIdUnit as InIdUnit,
			link_2.State as State_1,
			link_2.dtModified as DtModified,
			link_2.inIdOrgOwner as InIdOrgOwner,
			link_2.dtSynchDate as DtSynchDate,
			link_2.stGUID as StGUID
		FROM
			stLinks link_2
		WHERE
			link_2.inIdChild = toInt32(111)
	) u
		INNER JOIN stVersions version_1 ON u.InIdChild = version_1.inId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS stLinks

