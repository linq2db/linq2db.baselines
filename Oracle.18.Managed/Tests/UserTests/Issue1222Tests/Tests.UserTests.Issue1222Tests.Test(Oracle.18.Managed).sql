BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_stLinks"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_stLinks"
BEFORE INSERT ON "stLinks" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stLinks".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_stVersions"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_stVersions"
BEFORE INSERT ON "stVersions" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_stVersions".NEXTVAL INTO :NEW."inId" FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @parentId Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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

