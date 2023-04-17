BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Usage_1 Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Usage_1 Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404Two"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table404One"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

