BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
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
		CREATE TABLE "Car"
		(
			"Id"   Int         NOT NULL,
			"Name" VarChar(50)     NULL,

			CONSTRAINT "PK_Car" PRIMARY KEY ("Id")
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
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'Special'

INSERT INTO "Car"
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(9) -- String
SET     @Name = 'NoSpecial'

INSERT INTO "Car"
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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" <> 'Special' OR x."Name" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" <> 'Special' OR x."Name" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Name"
FROM
	"Car" x
WHERE
	x."Name" = 'Special'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Car" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

