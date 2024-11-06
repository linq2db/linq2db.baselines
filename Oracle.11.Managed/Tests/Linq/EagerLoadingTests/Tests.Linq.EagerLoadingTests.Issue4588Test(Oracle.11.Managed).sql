BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Order"';
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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrder"';
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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrderDetail"';
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
-- Oracle.11.Managed Oracle11
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
			t4."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					t3."Id"
				FROM
					(
						SELECT
							t2."Id"
						FROM
							(
								SELECT
									t1."Id",
									ROWNUM as RN
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
									) t1
								WHERE
									ROWNUM <= (:skip + :take)
							) t2
						WHERE
							t2.RN > :skip
					) t3
			) t4
				INNER JOIN "SubOrder" d ON t4."Id" = d."OrderId"
	) m_1
		INNER JOIN "SubOrderDetail" d_1 ON m_1."Id" = d_1."SubOrderId"

BeforeExecute
-- Oracle.11.Managed Oracle11
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
			t3."Id"
		FROM
			(
				SELECT
					t2."Id"
				FROM
					(
						SELECT
							t1."Id",
							ROWNUM as RN
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
							) t1
						WHERE
							ROWNUM <= (:skip + :take)
					) t2
				WHERE
					t2.RN > :skip
			) t3
	) m_1
		INNER JOIN "SubOrder" d ON m_1."Id" = d."OrderId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 100
DECLARE @take Int32
SET     @take = 10

SELECT
	t2."Id",
	t2."Name"
FROM
	(
		SELECT
			t1."Id",
			t1."Name",
			ROWNUM as RN
		FROM
			(
				SELECT
					x."Id",
					x."Name"
				FROM
					"Order" x
				WHERE
					x."Name" LIKE 'cat%' ESCAPE '~'
				ORDER BY
					x."Id"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrderDetail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SubOrder"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Order"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

