﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(6) -- String
SET     @Value_1 = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t2."Value_1"
FROM
	(
		SELECT
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
		ORDER BY
			t1."Value"
	) t2
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

