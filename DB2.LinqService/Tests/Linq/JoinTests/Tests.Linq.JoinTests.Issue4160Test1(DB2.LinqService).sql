BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4160Person"
		(
			"Code" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	@Code
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4160City"
		(
			"Code" NVarChar(255)     NULL,
			"Name" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Code VarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	(
		SELECT
			"cc"."Name"
		FROM
			"Issue4160City" "cc"
		WHERE
			"cc"."Code" = "pe"."Code" OR "cc"."Code" IS NULL AND "pe"."Code" IS NULL
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4160Person" "pe"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
END

