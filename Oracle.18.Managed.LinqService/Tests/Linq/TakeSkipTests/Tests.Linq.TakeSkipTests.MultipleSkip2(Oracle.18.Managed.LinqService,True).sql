BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
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
		CREATE TABLE "TakeSkipClass"
		(
			"Value" VarChar(10)     NULL
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
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 4

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

