BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "stLinks"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "stLinks"
(
	"inId"          SERIAL     NOT NULL,
	"inIdParent"    Int        NOT NULL,
	"inIdChild"     Int        NOT NULL,
	"inIdTypeRel"   Int        NOT NULL,
	"inMaxQuantity" Float          NULL,
	"inMinQuantity" Float          NULL,
	"inIdMeasure"   Int            NULL,
	"inIdUnit"      Int            NULL,
	"State"         Int            NULL,
	"dtModified"    TimeStamp  NOT NULL,
	"inIdOrgOwner"  Int            NULL,
	"dtSynchDate"   TimeStamp      NULL,
	"stGUID"        text       NOT NULL,

	CONSTRAINT "PK_stLinks" PRIMARY KEY ("inId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "stVersions"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "stVersions"
(
	"inId"     SERIAL  NOT NULL,
	"inIdMain" Int     NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "stVersions"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "stLinks"

