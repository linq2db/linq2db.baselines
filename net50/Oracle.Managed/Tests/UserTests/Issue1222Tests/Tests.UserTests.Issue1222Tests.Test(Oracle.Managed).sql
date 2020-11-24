BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "stLinks"
(
	"inId"          Int           NOT NULL,
	"inIdParent"    Int           NOT NULL,
	"inIdChild"     Int           NOT NULL,
	"inIdTypeRel"   Int           NOT NULL,
	"inMaxQuantity" Float             NULL,
	"inMinQuantity" Float             NULL,
	"inIdMeasure"   Int               NULL,
	"inIdUnit"      Int               NULL,
	"State"         Int               NULL,
	"dtModified"    timestamp     NOT NULL,
	"inIdOrgOwner"  Int               NULL,
	"dtSynchDate"   timestamp         NULL,
	"stGUID"        VarChar(255)  NOT NULL,

	CONSTRAINT "PK_stLinks" PRIMARY KEY ("inId")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_stLinks"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_stLinks"
BEFORE INSERT ON "stLinks" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stLinks".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "stVersions"
(
	"inId"     Int  NOT NULL,
	"inIdMain" Int  NOT NULL,

	CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_stVersions"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_stVersions"
BEFORE INSERT ON "stVersions" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stVersions".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @parentId Int32
SET     @parentId = 111

SELECT
	version_1."inIdMain"
FROM
	(
		SELECT
			link_1."inIdChild" as "Link_1",
			link_1."inId" as "Link_2",
			link_1."inIdParent" as "Link_3",
			link_1."inIdChild" as "Link_4",
			link_1."inIdTypeRel" as "Link_5",
			link_1."inMaxQuantity" as "Link_6",
			link_1."inMinQuantity" as "Link_7",
			link_1."inIdMeasure" as "Link_8",
			link_1."inIdUnit" as "Link_9",
			link_1."State" as "Link_10",
			link_1."dtModified" as "Link_11",
			link_1."inIdOrgOwner" as "Link_12",
			link_1."dtSynchDate" as "Link_13",
			link_1."stGUID" as "Link_14"
		FROM
			"stLinks" link_1
		WHERE
			link_1."inIdParent" = :parentId
		UNION ALL
		SELECT
			link_2."inIdParent" as "Link_1",
			link_2."inId" as "Link_2",
			link_2."inIdParent" as "Link_3",
			link_2."inIdChild" as "Link_4",
			link_2."inIdTypeRel" as "Link_5",
			link_2."inMaxQuantity" as "Link_6",
			link_2."inMinQuantity" as "Link_7",
			link_2."inIdMeasure" as "Link_8",
			link_2."inIdUnit" as "Link_9",
			link_2."State" as "Link_10",
			link_2."dtModified" as "Link_11",
			link_2."inIdOrgOwner" as "Link_12",
			link_2."dtSynchDate" as "Link_13",
			link_2."stGUID" as "Link_14"
		FROM
			"stLinks" link_2
		WHERE
			link_2."inIdChild" = :parentId
	) u
		INNER JOIN "stVersions" version_1 ON u."Link_1" = version_1."inId"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stVersions"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stVersions"';
	EXECUTE IMMEDIATE 'DROP TABLE "stVersions"';
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stLinks"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stLinks"';
	EXECUTE IMMEDIATE 'DROP TABLE "stLinks"';
END;

