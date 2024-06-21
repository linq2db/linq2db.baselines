BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UserDTO
(
	UserId   Int32,
	UserName Nullable(String),

	PRIMARY KEY (UserId)
)
ENGINE = MergeTree()
ORDER BY UserId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserPositionDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UserPositionDTO
(
	UserPositionId Int32,
	UserId         Int32,
	PositionId     Int32,

	PRIMARY KEY (UserPositionId)
)
ENGINE = MergeTree()
ORDER BY UserPositionId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UPS

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UPS
(
	UserPositionSectorId Int32,
	UserPositionId       Int32,
	SectorId             Int32,

	PRIMARY KEY (UserPositionSectorId)
)
ENGINE = MergeTree()
ORDER BY UserPositionSectorId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PositionDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS PositionDTO
(
	PositionId   Int32,
	PositionName String,

	PRIMARY KEY (PositionId)
)
ENGINE = MergeTree()
ORDER BY PositionId

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SectorDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SectorDTO
(
	SectorId   Int32,
	SectorName String,

	PRIMARY KEY (SectorId)
)
ENGINE = MergeTree()
ORDER BY SectorId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.SectorId,
	a_User.UserId
FROM
	SectorDTO m_1
		INNER JOIN UPS d ON m_1.SectorId = d.SectorId
		INNER JOIN UserPositionDTO a_UserPosition ON d.UserPositionId = a_UserPosition.UserPositionId
		INNER JOIN UserDTO a_User ON a_UserPosition.UserId = a_User.UserId
WHERE
	a_UserPosition.PositionId = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.SectorId
FROM
	SectorDTO x

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SectorDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS PositionDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UPS

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserPositionDTO

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserDTO

