BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12
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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

