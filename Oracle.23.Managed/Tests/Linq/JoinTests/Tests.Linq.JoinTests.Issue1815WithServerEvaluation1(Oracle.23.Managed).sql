BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "StLink"
		(
			"InId"          Int   NOT NULL,
			"InMaxQuantity" Float     NULL,
			"InMinQuantity" Float     NULL,

			CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "StLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (1,2D,1D)
	INTO "StLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (2,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "EdtLink"
		(
			"InId"          Int   NOT NULL,
			"InMaxQuantity" Float     NULL,
			"InMinQuantity" Float     NULL,

			CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "EdtLink" ("InId", "InMaxQuantity", "InMinQuantity") VALUES (2,4D,3D)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."InId" as "LinkId",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMinQuantity"
		ELSE e."InMinQuantity"
	END as "MinQuantity",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMaxQuantity"
		ELSE e."InMaxQuantity"
	END as "MaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."InId" as "LinkId",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMinQuantity"
		ELSE e."InMinQuantity"
	END as "MinQuantity",
	CASE
		WHEN e."InId" IS NULL THEN t1."InMaxQuantity"
		ELSE e."InMaxQuantity"
	END as "MaxQuantity"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

