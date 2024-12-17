BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4458Item"
		(
			"Id" VarChar(255) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4458Item" ("Id") VALUES ('1')
	INTO "Issue4458Item" ("Id") VALUES ('2')
	INTO "Issue4458Item" ("Id") VALUES ('3')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "WarehouseStock"
		(
			"ItemId"            VarChar(255) NOT NULL,
			"QuantityAvailable" Int          NOT NULL,
			"WarehouseId"       VarChar(255) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "WarehouseStock" ("ItemId", "QuantityAvailable", "WarehouseId") VALUES ('1',10,'A')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Review"
		(
			"ItemId" VarChar(255) NOT NULL,
			"UserId" VarChar(255) NOT NULL,
			"Score"  Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Review" ("ItemId", "UserId", "Score") VALUES ('1','1',100)
	INTO "Review" ("ItemId", "UserId", "Score") VALUES ('1','2',90)
	INTO "Review" ("ItemId", "UserId", "Score") VALUES ('2','1',89)
	INTO "Review" ("ItemId", "UserId", "Score") VALUES ('2','4',93)
	INTO "Review" ("ItemId", "UserId", "Score") VALUES ('3','5',91)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Issue4458Item" t1
		WHERE
			 EXISTS (
				SELECT
					*
				FROM
					"Review" r
				WHERE
					r."ItemId" = t1."Id" AND r."Score" > 95
			)
	) m_1
		INNER JOIN "Review" d ON d."ItemId" = m_1."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	(
		SELECT
			SUM(s."QuantityAvailable")
		FROM
			"WarehouseStock" s
		WHERE
			s."ItemId" = i."Id" AND (
				SELECT
					stock."ItemId"
				FROM
					"WarehouseStock" stock
				WHERE
					stock."ItemId" = i."Id"
				GROUP BY
					stock."ItemId"
			) = s."ItemId"
	)
FROM
	"Issue4458Item" i
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

