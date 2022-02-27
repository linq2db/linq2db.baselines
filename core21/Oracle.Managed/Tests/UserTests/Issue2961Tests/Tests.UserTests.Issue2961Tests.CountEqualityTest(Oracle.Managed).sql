BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Condos"
(
	"Id"         Int NOT NULL,
	"LocationId" Int NOT NULL,

	CONSTRAINT "PK_Condos" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "CategoryCondos"
(
	"CategoryId" Int NOT NULL,
	"CondoId"    Int NOT NULL,

	CONSTRAINT "PK_CategoryCondos" PRIMARY KEY ("CategoryId", "CondoId")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "CondoTags"
(
	"CondoId" Int NOT NULL,
	"TagId"   Int NOT NULL,

	CONSTRAINT "PK_CondoTags" PRIMARY KEY ("CondoId", "TagId")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Locations"
(
	"Id"           Int           NOT NULL,
	"LocationName" VarChar2(100) NOT NULL,

	CONSTRAINT "PK_Locations" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id",
	c_1."LocationId",
	ccleft."CountCondoCategories",
	ctleft."CountCondoTags",
	l."LocationName",
	l."Id"
FROM
	"Condos" c_1
		INNER JOIN "Locations" l ON c_1."LocationId" = l."Id"
		LEFT JOIN (
			SELECT
				t1."CondoId",
				Count(*) as "CountCondoTags"
			FROM
				"CondoTags" t1
			GROUP BY
				t1."CondoId"
		) ctleft ON c_1."Id" = ctleft."CondoId"
		LEFT JOIN (
			SELECT
				t2."CondoId",
				Count(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" t2
			GROUP BY
				t2."CondoId"
		) ccleft ON c_1."Id" = ccleft."CondoId"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Locations"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CondoTags"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CategoryCondos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Condos"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

