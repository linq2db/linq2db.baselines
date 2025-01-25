BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Value9'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
ORDER BY
	t1."Value"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

