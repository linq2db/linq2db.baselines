﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096Task"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1096Task"
		(
			"Id"         Int           NOT NULL,
			"TargetName" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096TaskStage"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1096TaskStage"
		(
			"Id"     Int      NOT NULL,
			"TaskId" Int      NOT NULL,
			"Actual" smallint NOT NULL,

			CONSTRAINT "PK_Issue1096TaskStage" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TargetName VarChar(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	@Id,
	@TargetName
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @TaskId Integer(4) -- Int32
SET     @TaskId = 1
DECLARE @Actual SmallInt(4) -- Int16
SET     @Actual = 1

INSERT INTO "Issue1096TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	@Id,
	@TaskId,
	@Actual
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"t"."Id",
	"t"."TargetName",
	"a_ActualStage"."Id",
	"a_ActualStage"."TaskId",
	"a_ActualStage"."Actual"
FROM
	"Issue1096Task" "t"
		LEFT JOIN "Issue1096TaskStage" "a_ActualStage" ON "t"."Id" = "a_ActualStage"."TaskId" AND "a_ActualStage"."Actual" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096TaskStage"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096Task"';
END

