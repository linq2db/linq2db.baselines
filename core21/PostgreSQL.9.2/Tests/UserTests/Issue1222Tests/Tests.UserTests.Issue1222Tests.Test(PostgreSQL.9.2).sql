BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "stLinks"
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
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "stVersions"
(
	"inId"     SERIAL  NOT NULL,
	"inIdMain" Int     NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "stVersions"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "stLinks"

