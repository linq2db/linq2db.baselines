BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UserDTO
(
	UserId   SERIAL         NOT NULL,
	UserName NVarChar(255)      NULL,

	PRIMARY KEY (UserId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserPositionDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UserPositionDTO
(
	UserPositionId SERIAL  NOT NULL,
	UserId         Int     NOT NULL,
	PositionId     Int     NOT NULL,

	PRIMARY KEY (UserPositionId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UPS

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UPS
(
	UserPositionSectorId SERIAL  NOT NULL,
	UserPositionId       Int     NOT NULL,
	SectorId             Int     NOT NULL,

	PRIMARY KEY (UserPositionSectorId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PositionDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS PositionDTO
(
	PositionId   SERIAL         NOT NULL,
	PositionName NVarChar(255)  NOT NULL,

	PRIMARY KEY (PositionId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SectorDTO

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SectorDTO
(
	SectorId   SERIAL         NOT NULL,
	SectorName NVarChar(255)  NOT NULL,

	PRIMARY KEY (SectorId)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

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
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.SectorId
FROM
	SectorDTO x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SectorDTO

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS PositionDTO

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UPS

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserPositionDTO

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UserDTO

