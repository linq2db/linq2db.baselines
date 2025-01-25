BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS stVersions
(
	inId     Int32,
	inIdMain Int32,

	PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS rlStatesTypesAndUserGroups
(
	inIdState Int32,
	inIdType  Int32,

	PRIMARY KEY (inIdState, inIdType)
)
ENGINE = MergeTree()
ORDER BY (inIdState, inIdType)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS stMain

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS stMain
(
	inId     Int32,
	inIdType Int32,

	PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	v.inId,
	t.inIdState,
	a_Main.inIdType
FROM
	stVersions v
		INNER JOIN stMain a_Main ON v.inIdMain = a_Main.inId
		LEFT JOIN rlStatesTypesAndUserGroups t ON t.inIdType = a_Main.inIdType

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS stMain

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS stVersions

