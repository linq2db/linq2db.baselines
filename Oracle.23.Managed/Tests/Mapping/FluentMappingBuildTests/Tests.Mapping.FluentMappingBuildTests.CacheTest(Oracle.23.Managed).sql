-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp_Cache"
		(
			ID         Int         NOT NULL,
			"Value"    VarChar(20)     NULL,
			"LastName" VarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."Value",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t.ID = 1

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp_Cache"
		(
			ID         Int         NOT NULL,
			"Value"    VarChar(20)     NULL,
			"LastName" VarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	ID,
	"Value",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."Value",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t.ID = 1

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp_Cache"
		(
			ID         Int         NOT NULL,
			"Column"   VarChar(20)     NULL,
			"LastName" VarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."Column",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t.ID = 1

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp_Cache"
		(
			ID         Int         NOT NULL,
			"Column"   VarChar(20)     NULL,
			"LastName" VarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'
DECLARE @LastName Varchar2(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
(
	ID,
	"Column",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."Column",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t.ID = 1

-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

