BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_stLinks"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_stLinks"
BEFORE INSERT ON "stLinks" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stLinks".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "stVersions"
		(
			"inId"     Int  NOT NULL,
			"inIdMain" Int  NOT NULL,

			CONSTRAINT "PK_stVersions" PRIMARY KEY ("inId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_stVersions"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_stVersions"
BEFORE INSERT ON "stVersions" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stVersions".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 111

SELECT
	version_1."inIdMain"
FROM
	(
		SELECT
			link_1."inIdChild" as "InIdChild",
			link_1."inId" as "InId",
			link_1."inIdParent" as "InIdParent",
			link_1."inIdChild" as "InIdChild_1",
			link_1."inIdTypeRel" as "InIdTypeRel",
			link_1."inMaxQuantity" as "InMaxQuantity",
			link_1."inMinQuantity" as "InMinQuantity",
			link_1."inIdMeasure" as "InIdMeasure",
			link_1."inIdUnit" as "InIdUnit",
			link_1."State" as "State_1",
			link_1."dtModified" as "DtModified",
			link_1."inIdOrgOwner" as "InIdOrgOwner",
			link_1."dtSynchDate" as "DtSynchDate",
			link_1."stGUID" as "StGUID"
		FROM
			"stLinks" link_1
		WHERE
			link_1."inIdParent" = :parentId
		UNION ALL
		SELECT
			link_2."inIdParent" as "InIdChild",
			link_2."inId" as "InId",
			link_2."inIdParent" as "InIdParent",
			link_2."inIdChild" as "InIdChild_1",
			link_2."inIdTypeRel" as "InIdTypeRel",
			link_2."inMaxQuantity" as "InMaxQuantity",
			link_2."inMinQuantity" as "InMinQuantity",
			link_2."inIdMeasure" as "InIdMeasure",
			link_2."inIdUnit" as "InIdUnit",
			link_2."State" as "State_1",
			link_2."dtModified" as "DtModified",
			link_2."inIdOrgOwner" as "InIdOrgOwner",
			link_2."dtSynchDate" as "DtSynchDate",
			link_2."stGUID" as "StGUID"
		FROM
			"stLinks" link_2
		WHERE
			link_2."inIdChild" = :parentId
	) u
		INNER JOIN "stVersions" version_1 ON u."InIdChild" = version_1."inId"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "stVersions"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "stLinks"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

