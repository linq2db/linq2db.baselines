﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Task"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Task"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Task" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TaskStage"
		(
			"Id"     Int  NOT NULL,
			"TaskId" Int  NOT NULL,
			"Actual" char NOT NULL,

			CONSTRAINT "PK_TaskStage" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO "Task"
(
	"Id"
)
VALUES
(
	CAST(@Id AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TaskId AS Int),
	CAST(@Actual AS char)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"it_1"."Name",
	"it_1"."Value_1",
	SUM(CASE
		WHEN "it_1"."Id" IS NULL THEN NULL
		ELSE "it_1"."Id"
	END)
FROM
	(
		SELECT
			'Id' as "Name",
			"it"."Id" as "Value_1",
			"a_ActualStage"."Id"
		FROM
			"Task" "it"
				LEFT JOIN "TaskStage" "a_ActualStage" ON "it"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1
	) "it_1"
GROUP BY
	"it_1"."Name",
	"it_1"."Value_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TaskStage"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Task"';
END

