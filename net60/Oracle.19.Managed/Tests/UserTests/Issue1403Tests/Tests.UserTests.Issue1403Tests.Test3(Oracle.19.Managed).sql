BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_3"';
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
		CREATE TABLE "Issue1403Tests_3"
		(
			"event_id"          Int          NOT NULL,
			"event_description" VarChar(255) NOT NULL,

			CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
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

INSERT INTO "Issue1403Tests_3"
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."event_id",
	t1."event_description"
FROM
	"Issue1403Tests_3" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1403Tests_3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

