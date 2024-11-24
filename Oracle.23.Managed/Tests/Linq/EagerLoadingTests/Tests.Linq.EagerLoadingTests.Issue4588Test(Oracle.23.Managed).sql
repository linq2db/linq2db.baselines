﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Order"';
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
		CREATE TABLE "Order"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrder"';
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
		CREATE TABLE "SubOrder"
		(
			"Id"      Int NOT NULL,
			"OrderId" Int NOT NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrderDetail"';
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
		CREATE TABLE "SubOrderDetail"
		(
			"Id"         Int          NOT NULL,
			"SubOrderId" Int          NOT NULL,
			"Code"       VarChar(255)     NULL,
			"Date"       timestamp    NOT NULL,
			"IsActive"   Char(1)      NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."SubOrderId",
	d_1."Code",
	d_1."Date",
	d_1."IsActive"
FROM
	(
		SELECT DISTINCT
			d."Id",
			t2."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					t1."Id"
				FROM
					(
						SELECT
							x."Id"
						FROM
							"Order" x
						WHERE
							x."Name" LIKE 'cat%' ESCAPE '~'
						ORDER BY
							x."Id"
						OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
					) t1
			) t2
				INNER JOIN "SubOrder" d ON t2."Id" = d."OrderId"
	) m_1
		INNER JOIN "SubOrderDetail" d_1 ON m_1."Id" = d_1."SubOrderId"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	m_1."Id",
	d."Id",
	d."OrderId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					x."Id"
				FROM
					"Order" x
				WHERE
					x."Name" LIKE 'cat%' ESCAPE '~'
				ORDER BY
					x."Id"
				OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
			) t1
	) m_1
		INNER JOIN "SubOrder" d ON m_1."Id" = d."OrderId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	x."Id",
	x."Name"
FROM
	"Order" x
WHERE
	x."Name" LIKE 'cat%' ESCAPE '~'
ORDER BY
	x."Id"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrderDetail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrder"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Order"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

