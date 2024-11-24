BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcreteA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcreteA"
		(
			"Id"    Int          NOT NULL,
			"AOnly" VarChar(255)     NULL,

			CONSTRAINT "PK_ConcreteA" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcreteB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConcreteB"
		(
			"Id"    Int          NOT NULL,
			"BOnly" VarChar(255)     NULL,

			CONSTRAINT "PK_ConcreteB" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @AOnly Varchar2(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	:Id,
	:AOnly
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BOnly Varchar2(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	:Id,
	:BOnly
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."AOnly",
	NULL,
	NULL
FROM
	"ConcreteA" e
UNION ALL
SELECT
	NULL,
	NULL,
	e_1."Id",
	e_1."BOnly"
FROM
	"ConcreteB" e_1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcreteB"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConcreteA"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

