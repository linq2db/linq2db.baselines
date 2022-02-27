BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Table404One" ("Id") VALUES (1)
	INTO "Table404One" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (1,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (2,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (3,1,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (4,0,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (5,1,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Table404One" ("Id") VALUES (1)
	INTO "Table404One" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (1,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (2,0,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (3,1,1)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (4,0,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (5,1,2)
	INTO "Table404Two" ("Id", "Usage", "FirstTableId") VALUES (6,1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

