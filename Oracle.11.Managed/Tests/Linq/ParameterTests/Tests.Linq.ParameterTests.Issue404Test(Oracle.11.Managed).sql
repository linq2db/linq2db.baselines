BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
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
		CREATE TABLE "Table404One"
		(
			"Id" Int NOT NULL
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

INSERT ALL
	INTO "Table404One" ("Id") VALUES (1)
	INTO "Table404One" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
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
		CREATE TABLE "Table404Two"
		(
			"Id"           Int NOT NULL,
			"Usage"        Int NOT NULL,
			"FirstTableId" Int NOT NULL
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

INSERT ALL
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (1,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (2,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (3,1,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (4,0,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (5,1,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @cond Int32
SET     @cond = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :cond

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @cond Int32
SET     @cond = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :cond

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
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
		CREATE TABLE "Table404One"
		(
			"Id" Int NOT NULL
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

INSERT ALL
	INTO "Table404One" ("Id") VALUES (1)
	INTO "Table404One" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
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
		CREATE TABLE "Table404Two"
		(
			"Id"           Int NOT NULL,
			"Usage"        Int NOT NULL,
			"FirstTableId" Int NOT NULL
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

INSERT ALL
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (1,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (2,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (3,1,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (4,0,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (5,1,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @cond Int32
SET     @cond = 0

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :cond

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @cond Int32
SET     @cond = 1

SELECT
	m_1."Id",
	d."Id",
	d."Usage",
	d."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Table404One" t1
	) m_1
		INNER JOIN "Table404Two" d ON m_1."Id" = d."FirstTableId"
WHERE
	d."Usage" = :cond

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id"
FROM
	"Table404One" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

