BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "FluentTemp"
		(
			ID     Int          NOT NULL,
			"Name" NVarChar(20)     NULL,

			CONSTRAINT "PK_FluentTemp" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	ID,
	"Name"
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

MERGE INTO "FluentTemp" "Target"
USING (VALUES
	(1,'John II')
) "Source"
(
	"source_ID",
	"source_Name"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."source_Name"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Name"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Name"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp"';
END

