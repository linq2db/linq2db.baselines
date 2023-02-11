BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
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
		CREATE TABLE "BaseTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BaseValue Int32
SET     @BaseValue = 100

INSERT INTO "BaseTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:BaseValue
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x."Id",
	x."Value"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

