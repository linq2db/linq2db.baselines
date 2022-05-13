BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
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
-- Oracle.11.Managed Oracle11
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				t2."Value_1"
			FROM
				(
					SELECT
						t1."Value" as "Value_1"
					FROM
						"TakeSkipClass" t1
					GROUP BY
						t1."Value"
					HAVING
						Count(*) > 1
				) t2
			WHERE
				ROWNUM <= 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TakeSkipClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

