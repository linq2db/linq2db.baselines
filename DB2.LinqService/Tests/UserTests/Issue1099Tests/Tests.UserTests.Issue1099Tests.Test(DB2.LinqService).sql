﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "BackgroundTask"
		(
			ID                 Int     NULL,
			"DurationID"       Int NOT NULL,
			"DurationInterval" Int NOT NULL,
			"PersonID"         Int     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @DurationID Integer(4) -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval Integer(4) -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID Integer(4) -- Int32
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
	CAST(@ID AS Int),
	CAST(@DurationID AS Int),
	CAST(@DurationInterval AS Int),
	CAST(@PersonID AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @personId Integer(4) -- Int32
SET     @personId = 1

SELECT
	"task_1".ID,
	"task_1"."DurationID",
	"task_1"."DurationInterval",
	"task_1"."PersonID"
FROM
	"BackgroundTask" "task_1"
WHERE
	"task_1"."PersonID" = @personId

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "BackgroundTask"';
END

