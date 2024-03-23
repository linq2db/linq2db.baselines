BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InId Int32
SET     @InId = 1
DECLARE @InMaxQuantity BinaryDouble -- Double
SET     @InMaxQuantity = 2D
DECLARE @InMinQuantity BinaryDouble -- Double
SET     @InMinQuantity = 1D

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InId Int32
SET     @InId = 2
DECLARE @InMaxQuantity BinaryDouble -- Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity BinaryDouble -- Double
SET     @InMinQuantity = NULL

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InId Int32
SET     @InId = 2
DECLARE @InMaxQuantity BinaryDouble -- Double
SET     @InMaxQuantity = 4D
DECLARE @InMinQuantity BinaryDouble -- Double
SET     @InMinQuantity = 3D

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	:InId,
	:InMaxQuantity,
	:InMinQuantity
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."InId" as "LinkId",
	e."InId",
	t1."InMinQuantity",
	e."InMinQuantity" as "InMinQuantity_1",
	t1."InMaxQuantity",
	e."InMaxQuantity" as "InMaxQuantity_1"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."InId" as "LinkId",
	e."InId",
	t1."InMinQuantity",
	e."InMinQuantity" as "InMinQuantity_1",
	t1."InMaxQuantity",
	e."InMaxQuantity" as "InMaxQuantity_1"
FROM
	"StLink" t1
		LEFT JOIN "EdtLink" e ON t1."InId" = e."InId"
WHERE
	t1."InId" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

