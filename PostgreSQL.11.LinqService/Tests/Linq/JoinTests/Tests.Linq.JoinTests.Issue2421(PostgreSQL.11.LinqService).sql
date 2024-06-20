BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UserDTO"
(
	"UserId"   SERIAL  NOT NULL,
	"UserName" text        NULL,

	CONSTRAINT "PK_UserDTO" PRIMARY KEY ("UserId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserPositionDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UserPositionDTO"
(
	"UserPositionId" SERIAL  NOT NULL,
	"UserId"         Int     NOT NULL,
	"PositionId"     Int     NOT NULL,

	CONSTRAINT "PK_UserPositionDTO" PRIMARY KEY ("UserPositionId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UPS"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "UPS"
(
	"UserPositionSectorId" SERIAL  NOT NULL,
	"UserPositionId"       Int     NOT NULL,
	"SectorId"             Int     NOT NULL,

	CONSTRAINT "PK_UPS" PRIMARY KEY ("UserPositionSectorId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PositionDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "PositionDTO"
(
	"PositionId"   SERIAL  NOT NULL,
	"PositionName" text    NOT NULL,

	CONSTRAINT "PK_PositionDTO" PRIMARY KEY ("PositionId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SectorDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SectorDTO"
(
	"SectorId"   SERIAL  NOT NULL,
	"SectorName" text    NOT NULL,

	CONSTRAINT "PK_SectorDTO" PRIMARY KEY ("SectorId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."SectorId",
	"a_User"."UserId"
FROM
	"SectorDTO" m_1
		INNER JOIN "UPS" d ON m_1."SectorId" = d."SectorId"
		INNER JOIN "UserPositionDTO" "a_UserPosition" ON d."UserPositionId" = "a_UserPosition"."UserPositionId"
		INNER JOIN "UserDTO" "a_User" ON "a_UserPosition"."UserId" = "a_User"."UserId"
WHERE
	"a_UserPosition"."PositionId" = 1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."SectorId"
FROM
	"SectorDTO" x

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SectorDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "PositionDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UPS"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserPositionDTO"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserDTO"

