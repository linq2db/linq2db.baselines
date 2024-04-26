BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_2"';
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
		CREATE TABLE "Issue1403Tests_2"
		(
			"event_id"          Int          NOT NULL,
			"event_description" VarChar(255) NOT NULL,

			CONSTRAINT "PK_Issue1403Tests_2" PRIMARY KEY ("event_id")
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

INSERT INTO "Issue1403Tests_2"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."event_id",
	t1."event_description"
FROM
	"Issue1403Tests_2" t1
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

