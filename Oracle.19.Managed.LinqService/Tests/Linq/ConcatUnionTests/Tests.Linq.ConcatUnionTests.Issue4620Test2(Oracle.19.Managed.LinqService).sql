BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
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
		CREATE TABLE "Issue4620Table"
		(
			"Id"         Int             NOT NULL,
			"IdContract" Int                 NULL,
			"IdClient"   Int                 NULL,
			"Sum"        Decimal(28, 10) NOT NULL
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
DECLARE @IdContract Int32
SET     @IdContract = NULL
DECLARE @IdClient Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IdContract Int32
SET     @IdContract = 2
DECLARE @IdClient Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @IdContract Int32
SET     @IdContract = NULL
DECLARE @IdClient Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @IdContract Int32
SET     @IdContract = 2
DECLARE @IdClient Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(
	:Id,
	:IdContract,
	:IdClient,
	:Sum
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
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
		CREATE TABLE "Issue4620Client"
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Client 1'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(8) -- String
SET     @Name = 'Client 2'

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
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
		CREATE TABLE "Issue4620Contract"
		(
			"Id"       Int NOT NULL,
			"IdClient" Int NOT NULL
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
DECLARE @IdClient Int32
SET     @IdClient = 1

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	:Id,
	:IdClient
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IdClient Int32
SET     @IdClient = 2

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(
	:Id,
	:IdClient
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	(
		SELECT
			b."Id",
			a_Client."Name"
		FROM
			"Issue4620Table" b
				INNER JOIN "Issue4620Client" a_Client ON b."IdClient" = a_Client."Id" AND b."IdClient" IS NOT NULL
		WHERE
			b."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			b_1."Id",
			a_Client_1."Name"
		FROM
			"Issue4620Table" b_1
				INNER JOIN "Issue4620Contract" a_Contract ON b_1."IdContract" = a_Contract."Id" AND b_1."IdContract" IS NOT NULL
				INNER JOIN "Issue4620Client" a_Client_1 ON a_Contract."IdClient" = a_Client_1."Id"
		WHERE
			b_1."IdContract" IS NOT NULL
	) t1
ORDER BY
	t1."Id",
	t1."Name"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Contract"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Client"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4620Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

