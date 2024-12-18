BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
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
		CREATE TABLE "BackgroundTask"
		(
			ID                 Int     NULL,
			"DurationID"       Int NOT NULL,
			"DurationInterval" Int NOT NULL,
			"PersonID"         Int     NULL
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
SET     @ID = 3
DECLARE @DurationID Int32
SET     @DurationID = 2
DECLARE @DurationInterval Int32
SET     @DurationInterval = 4
DECLARE @PersonID Int32
SET     @PersonID = 1

INSERT INTO "BackgroundTask"
(
	ID,
	"DurationID",
	"DurationInterval",
	"PersonID"
)
VALUES
(
	:ID,
	:DurationID,
	:DurationInterval,
	:PersonID
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @personId Int32
SET     @personId = 1

SELECT
	task_1.ID,
	task_1."DurationID",
	task_1."DurationInterval",
	task_1."PersonID"
FROM
	"BackgroundTask" task_1
WHERE
	task_1."PersonID" = :personId AND task_1."PersonID" IS NOT NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

