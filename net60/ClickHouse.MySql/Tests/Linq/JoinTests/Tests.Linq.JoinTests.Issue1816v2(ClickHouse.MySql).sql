﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS stVersions
(
	inId     Int32,
	inIdMain Int32,

	 PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS rlStatesTypesAndUserGroups
(
	inIdState Int32,
	inIdType  Int32,

	 PRIMARY KEY (inIdState, inIdType)
)
ENGINE = MergeTree()
ORDER BY (inIdState, inIdType)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS stMain

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS stMain
(
	inId     Int32,
	inIdType Int32,

	 PRIMARY KEY (inId)
)
ENGINE = MergeTree()
ORDER BY inId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	v.inId,
	r.inIdState,
	a_Main.inIdType
FROM
	stVersions v
		INNER JOIN stMain a_Main ON v.inIdMain = a_Main.inId
		LEFT JOIN rlStatesTypesAndUserGroups r ON r.inIdType = a_Main.inIdType

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS stMain

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS stVersions

