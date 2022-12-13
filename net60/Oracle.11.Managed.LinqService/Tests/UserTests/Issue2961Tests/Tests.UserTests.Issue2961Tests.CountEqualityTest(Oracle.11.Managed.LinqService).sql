BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Condos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Condos"
		(
			"Id"         Int NOT NULL,
			"LocationId" Int NOT NULL,

			CONSTRAINT "PK_Condos" PRIMARY KEY ("Id")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CategoryCondos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CategoryCondos"
		(
			"CategoryId" Int NOT NULL,
			"CondoId"    Int NOT NULL,

			CONSTRAINT "PK_CategoryCondos" PRIMARY KEY ("CategoryId", "CondoId")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CondoTags"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CondoTags"
		(
			"CondoId" Int NOT NULL,
			"TagId"   Int NOT NULL,

			CONSTRAINT "PK_CondoTags" PRIMARY KEY ("CondoId", "TagId")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Locations"
		(
			"Id"           Int           NOT NULL,
			"LocationName" VarChar2(100) NOT NULL,

			CONSTRAINT "PK_Locations" PRIMARY KEY ("Id")
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

SELECT
	c_1."Id",
	c_1."LocationId",
	t2."CountCondoCategories",
	t1."CountCondoTags",
	l."LocationName",
	l."Id"
FROM
	"Condos" c_1
		INNER JOIN "Locations" l ON c_1."LocationId" = l."Id"
		LEFT JOIN (
			SELECT
				ctleft."CondoId" as "subct",
				Count(*) as "CountCondoTags"
			FROM
				"CondoTags" ctleft
			GROUP BY
				ctleft."CondoId"
		) t1 ON c_1."Id" = t1."subct"
		LEFT JOIN (
			SELECT
				ccleft."CondoId" as "subcc",
				Count(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" ccleft
			GROUP BY
				ccleft."CondoId"
		) t2 ON c_1."Id" = t2."subcc"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CondoTags"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CategoryCondos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Condos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

