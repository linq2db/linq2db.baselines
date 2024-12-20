BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1316Tests"';
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
		CREATE TABLE "Issue1316Tests"
		(
			ID Int NOT NULL,

			CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY (ID)
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
DECLARE @ID Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID = :p
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5

SELECT
	t1.ID
FROM
	"Issue1316Tests" t1
WHERE
	t1.ID = :Id
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1316Tests"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

